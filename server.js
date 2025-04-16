//REQUIRED MODULES
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const bcrypt = require('bcrypt');
const session = require('express-session');

require('dotenv').config();


//CREATING APP USING EXPRESS
const app = express();

//MIDDLEWARE
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.use(express.static('public'));

//FOR LOGIN/LOGOUT SESSIONS
app.use(session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
}));

//DB CONNECTION
const con = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});
con.connect((err)=>{
    if(err){
        console.log("DB Connection Failed!");
        return;
    }
    console.log("connected to database");
});

//HOME ROUTE
app.get('/', (req,res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

//REGISTER
app.post('/register', async (req, res) => {
    const { username, email, password, password2 } = req.body;
  
    if (!username || !email || !password || !password2) {
      return res.status(400).json({ success: false, message: 'All fields are required' });
    }
  
    if (password !== password2) {
      return res.status(400).json({ success: false, message: 'Passwords do not match' });
    }
  
    try {
      const saltRounds = 10;
      const hashedPassword = await bcrypt.hash(password, saltRounds);
      const query = 'INSERT INTO Users (username, email, password) VALUES (?,?,?)';
  
      con.query(query, [username, email, hashedPassword], (err, results) => {
        if (err) {
          if (err.code === 'ER_DUP_ENTRY') {
            return res.status(409).json({ success: false, message: 'Username or email already exists' });
          }
          console.error('Database error:', err);
          return res.status(500).json({ success: false, message: 'Internal server error' });
        }
  
        res.json({ success: true, message: 'Registration successful' });
      });
    } catch (error) {
      console.error('Error hashing password:', error);
      res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

//LOGIN
app.post('/login', async (req, res) => {
  const { user, password3 } = req.body;
  if (!user || !password3) {
      return res.json({ success: false, message: 'Username and password are required' });
  }

  const query = 'SELECT * FROM Users WHERE username = ?';
  con.query(query, [user], async (err, results) => {  // Use `async` here
      if (err) {
          console.error('Database error:', err);
          return res.json({ success: false, message: 'Internal server error' });
      }
      if (results.length === 0) {
        return res.json({ success: false, message: 'Invalid username or password' });
      }
      const user = results[0];
      
      try {
          const passwordMatch = await bcrypt.compare(password3, user.password); // Await bcrypt.compare
          if (passwordMatch) {
            req.session.userId = user.id;
            req.session.username = user.username;
            return res.json({ success: true, message: 'Login successful' });
          } else {
            res.json({ success: false, message: 'Invalid username or password.Try Again!' });
          }
      } catch (error) {
          console.error('Error comparing passwords:', error);
          return res.json({ success: false, message: 'Internal server error' });
      }
  });
});


//LOGOUT
app.post('/logout', (req,res) => {
  req.session.destroy((err) => {
    if(err) {
      console.log("Error logging out:", err);
      return res.status(500).json({success: false, message: 'Internal server error'});
    }
    res.json({success: true, message: 'Logout successful'});
  });
});

app.get('/check-login', (req, res) => {
  if (req.session.username) {
    res.json({ isLoggedIn: true, username: req.session.username });
  } else {
    res.json({ isLoggedIn: false });
  }
});


//STATIC QUIZ ROUTE 
app.get('/quiz/:category', (req,res) => {
    const category = req.params.category;
    const query = `SELECT * FROM quizzes where quiz_name = ?`;

    con.query(query,[category], (err,results) => {
        if(err){
            console.log("ERROR ");
            return res.status(500).send('Error fetching quiz data');
        }
        res.json(results);
    });
});

//SAVE QUIZ PROGRESS
app.post('/save-quiz-progress', (req,res) => {
  const { category, score, questions_json } = req.body;
  if (!req.session.userId || !category || score === undefined || !questions_json) {
    return res.status(400).json({ message: 'Missing required fields' });
  }
  const query = 'INSERT INTO quiz_progress (user_id, category, score, questions_json, submission_time) values (?,?,?,?, NOW())';
  con.query(query, [req.session.userId, category, score, questions_json], (err, result) => {
    if(err){
      console.log(err);
      return res.status(500).json({message: 'Error saving quiz progress'});
    }
    res.json({message: 'Quiz progress saved successfully!'});
  });
});

app.post('/save-exam-progress', (req, res) => {
  const { category, subCategory, score, totalQuestions, questions_json } = req.body;

  if (!req.session.userId || !category || !subCategory || score === undefined || !totalQuestions || !questions_json) {
    return res.status(400).json({ message: 'Missing required fields' });
  }

  const query = 'INSERT INTO quiz_progress (user_id, category, score, questions_json, submission_time, level) VALUES (?, ?, ?, ?, NOW(), ?)';

  con.query(query, [req.session.userId, category, score, questions_json, subCategory], (err, result) => {
    if (err) {
      console.log(err);
      return res.status(500).json({ message: 'Error saving exam progress' });
    }
    res.json({ message: 'Exam progress saved successfully!' });
  });
});



//DISPLAY USER PROGRESS
app.get('/get-quiz-progress', (req, res) => {
  const userId = req.session.userId;
  if (!userId) {
      return res.status(401).json({ message: "User not logged in" });
  }

  const query = 'SELECT progress_id, category, score, submission_time FROM quiz_progress WHERE user_id = ? ORDER BY submission_time DESC';

  con.query(query, [userId], (err, results) => {
      if (err) {
          console.error(err);
          return res.status(500).json({ message: "Error fetching progress" });
      }
      res.json(results);
  });
});

//DISPLAY STORED JSON QUIZ 
app.get('/get-quiz-details/:progressId', (req, res) => {
  const progressId = req.params.progressId;
  const query = 'SELECT questions_json FROM quiz_progress WHERE progress_id = ?';

  con.query(query, [progressId], (err, result) => {
      if (err) {
          console.error(err);
          return res.status(500).json({ message: "Error retrieving quiz data" });
      }
      if (result.length === 0) {
          return res.status(404).json({ message: "Quiz not found" });
      }

      res.json(JSON.parse(result[0].questions_json));
  });
});



//EXAM PREPARATION ROUTE
app.get('/quiz', (req, res) => {
  console.log(req.session.user ? `User logged in: ${req.session.user.email}` : "Guest user accessing quiz");
  res.sendFile(path.join(__dirname, 'public', 'quiz.html'));
});
app.get('/get-questions', async (req, res) => {
  const { category, sub_category } = req.query;

  if (!category || !sub_category) {
      return res.status(400).json({ error: "Missing category or sub_category." });
  }

  // Case-insensitive query
  const query = `
      SELECT * FROM ExamPreparation
      WHERE LOWER(category) = LOWER(?) AND LOWER(sub_category) = LOWER(?)
  `;

  con.query(query, [category, sub_category], (err, results) => {
      if (err) {
          console.error("Database Error:", err);
          return res.status(500).json({ error: "Internal server error." });
      }

      if (results.length === 0) {
          return res.status(404).json({ error: "No questions found." });
      }

      res.json(results); // Send the fetched questions as a response
  });
});


//ADMIN PANEL
app.get('/admin-login', (req,res) => {
  res.sendFile(path.join(__dirname, 'public', 'admin.html'));
})

//1.GET QUIZZES
app.get('/admin/get-quizzes', async (req, res) => {
  const query = 'SELECT DISTINCT quiz_name FROM quizzes';
  const query2 = 'SELECT DISTINCT category, sub_category FROM ExamPreparation';

  con.query(query, (err, results) => {
      if (err) {
          console.error("Error fetching quizzes:", err);
          return res.status(500).json({ message: "Error fetching quizzes" });
      }
      con.query(query2, (err, result2) => {
          if (err) {
              console.error("Error fetching exam categories:", err);
              return res.status(500).json({ message: "Error fetching exam categories" });
          }
          
          // Properly merge arrays
          const mergedResults = [...results, ...result2];

          res.json(mergedResults);
      });
  });
});


//2.DELETE QUIZZES
app.delete('/admin/delete-quiz/:category/:sub_category', async (req, res) => {
  const category = req.params.category;
  const sub_category = req.params.sub_category;

  //Quizzes Table
  const query1 = 'DELETE FROM quizzes where quiz_name = ?';
  //ExamPreparation Table
  const query2 = 'DELETE FROM ExamPreparation where category = ? and sub_category = ?';
  if(sub_category === "N/A"){
    con.query(query1, [category], (err) => {
      if(err){
        console.error("Error fetching quizzes:", err);
        return res.status(500).json({ message: "Error fetching quizzes" });
      }
      res.json(category+ "table deleted successfully");
    })
  } else {
    con.query(query2, [category, sub_category], (err) => {
      if(err){
        console.error("Error fetching quizzes:", err);
        return res.status(500).json({ message: "Error fetching quizzes" });
      }
      res.json(category+" table level "+sub_category+" deleted successfully");
    })
  }
});

//3.DISPLAY QUIZZES
app.get('/admin/show-quiz/:category/:sub_category', async(req, res) => {
  const category = req.params.category;
  const sub_category = req.params.sub_category;

  const query1 = 'SELECT * FROM quizzes where quiz_name = ?';
  const query2 = 'SELECT * FROM ExamPreparation where category = ? and sub_category = ?';

  if(sub_category === "N/A"){
    con.query(query1, [category], (err,result) => {
      if(err){
        console.log("ERROR",err);
      }
      res.json(result);
    })
  } else {
    con.query(query2, [category, sub_category], (err, result) => {
      if(err){
        console.log("ERROR", err);
      }
      res.json(result);
    })
  }
});

//4.ADD QUIZ
app.post('/admin/add-quiz', async (req, res) => {
  const { category, sub_category, questions } = req.body;
  const query1 = 'INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer) Values (?,?,?,?,?,?,?)';
  const query2 = 'INSERT INTO ExamPreparation (category, sub_category, question, option_a,  option_b, option_c, option_d, correct_answer) VALUES (?,?,?,?,?,?,?,?)';
  
  if(sub_category === "N/A"){
    for (const q of questions) {
      con.query(query1,[category, q.question, q.options[0], q.options[1], q.options[2], q.options[3],q.correct], (err,result) => {
        if(err){
          console.error('Database error:', err);
          return res.status(500).json({ success: false, message: 'Internal server error' });
        }
        res.json("Quiz Added Successfully");
      })
    } 
  } else {
    for (const q of questions) {
      con.query(query2,[category, sub_category, q.question, q.options[0], q.options[1], q.options[2], q.options[3],q.correct], (err,result) => {
        if(err){
          console.error('Database error:', err);
          return res.status(500).json({ success: false, message: 'Internal server error' });
        }
        res.json("Quiz Added Successfully");
      })
    }
  }  
});


// server.js
app.get('/api/tech-quiz', async (req, res) => {
  const { category, difficulty, limit } = req.query;
  const apiKey = process.env.API_KEY;

  const apiUrl = `https://quizapi.io/api/v1/questions?apiKey=${apiKey}&category=${category}&difficulty=${difficulty}&limit=${limit}`;

  try {
      const response = await fetch(apiUrl);
      const data = await response.json();
      res.json(data);
  } catch (err) {
      console.error(err);
      res.status(500).json({ error: "Failed to fetch quiz questions" });
  }
});


//ADMIN LOGIN
app.post('/admin-login', (req, res) => {
  const { username, password } = req.body;

  if (username === process.env.ADMIN_USERNAME && password === process.env.ADMIN_PASSWORD) {
    req.session.admin = true;
    res.json({ success: true });
  } else {
    res.status(401).json({ success: false, message: "Invalid credentials" });
  }
});



// START THE SERVER
const PORT = 1300;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});