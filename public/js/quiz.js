// Functions to get URL parameter
function getCategoryFromUrl() {
  const params = new URLSearchParams(window.location.search);
  return params.get('category');
}
function getQuizTypeFromUrl(){
  const params = new URLSearchParams(window.location.search);
  return params.get('quiz-type');
}
function getDifficultyFromUrl(){
  const params = new URLSearchParams(window.location.search);
  return params.get('difficulty');
}
function getLimitFromUrl(){
  const params = new URLSearchParams(window.location.search);
  return params.get('limit');
}


// STATIC-API Fetch and display quiz questions
async function fetchAndDisplayQuiz() {
  const quizType = getQuizTypeFromUrl();
  const category = getCategoryFromUrl();
  const difficulty = getDifficultyFromUrl();
  const limit = getLimitFromUrl();
  let categoryId = 0;

  if (!category) {
      alert('No category selected!');
      window.location.href = '/';
      return;
  }

  // Update the quiz title
  document.getElementById('quiz-title').textContent = `Quiz: ${category}`;

  let questions = [];  // Store questions here

  if (!quizType) {
      // If quizType is not provided, assume it's a static quiz (from database)
      try {
          const response = await fetch(`/quiz/${category}`);
          questions = await response.json();
      } catch (error) {
          console.error("Error fetching static quiz questions:", error);
          alert("Unable to load quiz questions.");
          return;
      }
  } else {
      // If quizType is provided, fetch from API
      let apiUrl = "";
      //let apiKey = process.env.API_KEY;

      if (quizType === "tech") {
        apiUrl = `/api/tech-quiz?category=${category}&difficulty=${difficulty}&limit=${limit}`;
    }
     else if (quizType === "non-tech") {
        //Open Trivia DB Category & ID Array of Objects
         const categoryArray = [
          {id: 9, name: 'general knowledge'},
          {id: 10, name: 'books'},
          {id: 11, name: 'film'},
          {id: 12, name: 'music'},
          //{id: 13, name: 'theatre'},
          {id: 14, name: 'television'},
          {id: 17, name: 'nature'},
          {id: 18, name: 'computer'},
          {id: 19, name: 'mathematics'},
          {id: 20, name: 'mythology'},
          {id: 21, name: 'sports'},
          {id: 22, name: 'geography'},
          {id: 23, name: 'history'},
          //{id: 24, name: 'politics'},   //(only medium)
          //{id: 25, name: 'art'},
          {id: 26, name: 'celebrities'},
          {id: 27, name: 'animals'},
          {id: 28, name: 'vehicles'},
          {id: 29, name: 'comics'},
          //{id: 30, name: 'gadgets'},
          {id: 31, name: 'anime'},
          {id: 32, name: 'cartoon'}
         ];
         //to find the correct id of category for api call
         for(i=0; i<categoryArray.length; i++){
           if(category === categoryArray[i].name){
            categoryId = categoryArray[i].id;
           } 
         }   
         if(categoryId == 0){
          alert("Sorry!! we cannot generate this quiz.");
          return;
         }
         apiUrl = `https://opentdb.com/api.php?amount=${limit}&category=${categoryId}&difficulty=${difficulty}&type=multiple`;

      } else {
          alert("Invalid quiz type!");
          return;
      }

      try {
          const response = await fetch(apiUrl);
          const data = await response.json();

          if (quizType === "tech") {
              /*questions = data.map(q => ({
                  question: q.question,
                  options: Object.values(q.answers).filter(answer => answer !== null), // Remove null answers
                  answer: q.correct_answer
              }));*/
              displayQuiz(data, quizType);
          } else if (quizType === "non-tech") {
              /*questions = data.results.map(q => ({
                  question: q.question,
                  options: [...q.incorrect_answers, q.correct_answer].sort(() => Math.random() - 0.5),
                  answer: q.correct_answer
              }));*/
              displayQuiz(data, quizType);
          }
      } catch (error) {
          console.error("Error fetching API quiz questions:", error);
          alert("Unable to load quiz questions.");
          return;
      }
  }

  // Display questions (either static or API-based)
  displayQuestions(questions);
}


// STATIC QUIZZES DISPLAY 
function displayQuestions(questions) {
  let currentQuestionIndex = 0;
  const questionContainer = document.getElementById('question-container');
  const nextBtn = document.getElementById('next-btn');
  const submitBtn = document.getElementById('submit-btn');

  // Function to display a single question
  function showQuestion(index) {
    const question = questions[index];
    questionContainer.innerHTML = `
        <h2>${index + 1}. ${question.question}</h2>
        <ul>
          <li><label><input type="radio" name="answer" value='A'> ${question.option1}</label></li>
          <li><label><input type="radio" name="answer" value='B'> ${question.option2}</label></li>
          <li><label><input type="radio" name="answer" value='C'> ${question.option3}</label></li>
          <li><label><input type="radio" name="answer" value='D'> ${question.option4}</label></li>
        </ul>
      `;
  }

  // Show the first question
  showQuestion(currentQuestionIndex);

  // Handle Next Button
  nextBtn.addEventListener('click', () => {
    const selectedAnswer = document.querySelector('input[name="answer"]:checked');
    if (!selectedAnswer) {
      alert('Please select an answer!');
      return;
    }

    userAnswers[currentQuestionIndex] = selectedAnswer.value;

    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length - 1) {
      showQuestion(currentQuestionIndex);
    } else {
      // Last question: show submit button
      showQuestion(currentQuestionIndex);
      nextBtn.style.display = 'none';
      submitBtn.style.display = 'block';
    }
  });

  // Handle Submit Button
  submitBtn.addEventListener('click', () => {
    const selectedAnswer = document.querySelector('input[name="answer"]:checked');
    if (!selectedAnswer) {
      alert('Please select an answer!');
      return;
    }

    userAnswers[currentQuestionIndex] = selectedAnswer.value;
    submitQuiz(questions);
  });
}


//STATIC Handle quiz submission
async function submitQuiz(questions) {
  const category = getCategoryFromUrl();
  const selectedAnswer = document.querySelector('input[name="answer"]:checked');
  if (selectedAnswer) {
    userAnswers[questions.length - 1] = selectedAnswer.value;
  }
  let correctAnswers = 0;
  let quizData = [];
  questions.forEach((question, index) => {
    const userAnswer = userAnswers[index] || null;
    if (question.answer == userAnswer) {
      correctAnswers++;
    }

    quizData.push({
      q: question.question,
      o: [question.option1, question.option2, question.option3, question.option4],
      c: question.answer,
      u: userAnswer
    });
  });

  // Display quiz result
  const quizContainer = document.getElementById('quiz-container');
  const resultsContainer = document.createElement('div');
  resultsContainer.id = 'results-container';
  resultsContainer.innerHTML = `<h2>Quiz Results</h2><p>Your score: ${correctAnswers} / ${questions.length}</p>`;

  quizContainer.innerHTML = '';
  quizContainer.appendChild(resultsContainer);

  const restartButton = document.createElement('button');
  restartButton.textContent = 'Restart Quiz';
  restartButton.addEventListener('click', () => {
    location.reload();
  });
  resultsContainer.appendChild(restartButton);

  const homeButton = document.createElement('button');
  homeButton.textContent = 'Go to Home';
  homeButton.addEventListener('click', () => {
    window.location.href = '/';
  });
  resultsContainer.appendChild(homeButton);

  // Send quiz progress to the backend
  try {
    const response = await fetch('/save-quiz-progress', {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify({
        category: category,
        score: correctAnswers,
        questions_json: JSON.stringify(quizData)
      })
    });
    const data = await response.json();
    alert(data.message);
  } catch (error) {
    alert("Error in saving progress!")
    console.log('Error saving progress: ', error);
  }
}


//API QUIZZES DISPLAY
function displayQuiz(data, quizType) {
  if (!data || data.length === 0) {
      console.error("Error: No data received.");
      alert("No questions available.");
      return;
  }

  console.log("Fetched Data Structure:", data);

  const questionContainer = document.getElementById('question-container');
  const nextBtn = document.getElementById('next-btn');
  const submitBtn = document.getElementById('submit-btn');

  let questions = [];
  let currentQuestionIndex = 0;
  let userAnswers = [];

  // Process questions based on quiz type
  if (quizType === "tech") {
      if (!Array.isArray(data)) {
          console.error("Error: Expected an array but received:", data);
          alert("Invalid response format.");
          return;
      }

      questions = data.map(q => ({
          question: q.question || "No question available",
          options: q.answers ? Object.values(q.answers).filter(opt => opt !== null) : [],
          answer: q.correct_answer || "No answer provided"
      }));
  } else {
      questions = data.results ? data.results.map(q => ({
          question: q.question || "No question available",
          options: [...(q.incorrect_answers || []), q.correct_answer].sort(() => Math.random() - 0.5),
          answer: q.correct_answer || "No answer provided"
      })) : [];
  }

  console.log("Processed Questions:", questions);

  if (questions.length === 0) {
      alert("No valid questions found.");
      return;
  }

  // Function to display a question
  function showQuestion(index) {
      const q = questions[index];

      console.log(`Displaying Question ${index + 1}:`, q);

      if (!q.options || q.options.length === 0) {
          console.error(`Missing options for question ${index + 1}`, q);
          alert("Some questions have missing options.");
          return;
      }

      questionContainer.innerHTML = `
          <h2>${index + 1}. ${q.question}</h2>
          <ul>
              ${q.options.map((option, optionIndex) => 
                  `<li><label>
                      <input type="radio" name="answer" value="${optionIndex}"> ${option}
                  </label></li>`
              ).join("")}
          </ul>
      `;
  }

  showQuestion(currentQuestionIndex);

  // Next button click event
  nextBtn.addEventListener('click', () => {
      const selectedAnswer = document.querySelector('input[name="answer"]:checked');
      if (!selectedAnswer) {
          alert('Please select an answer!');
          return;
      }

      const selectedIndex = parseInt(selectedAnswer.value); // Get index as number
      const userOptionLetter = String.fromCharCode(65 + selectedIndex); // Convert 0 -> A, 1 -> B, etc.

      userAnswers[currentQuestionIndex] = userOptionLetter; // Store as letter

      currentQuestionIndex++;

      if (currentQuestionIndex < questions.length) {
          showQuestion(currentQuestionIndex);
      } else {
          nextBtn.style.display = 'none';
          submitBtn.style.display = 'block';
      }
  });

  // Submit button click event
  submitBtn.addEventListener('click', () => {
      const selectedAnswer = document.querySelector('input[name="answer"]:checked');
      if (!selectedAnswer) {
          alert('Please select an answer!');
          return;
      }

      const selectedIndex = parseInt(selectedAnswer.value);
      const userOptionLetter = String.fromCharCode(65 + selectedIndex); // Convert to 'A', 'B', etc.

      userAnswers[currentQuestionIndex] = userOptionLetter;

      submitAPIQuiz(questions, userAnswers);
  });
}

//API SCORE CALCULATION
function calculateScore(questions, userAnswers) {
  let correctAnswers = 0;
  let quizData = [];

  questions.forEach((question, index) => {
      console.log("---- Question ----");
      console.log("Question:", question.question);
      console.log("Options:", question.options);
      console.log("Correct Answer (from API):", question.answer);
      
      // Find correct answer's index in options
      //const correctIndex = question.options.indexOf(question.answer);
      let correctAnswerText = question.answer; 

// If the answer is in "answer_a" format (for tech quizzes), map it to the actual text
if (correctAnswerText.startsWith("answer_") && question.options) {
    const optionIndex = correctAnswerText.slice(-1).charCodeAt(0) - 97; // 'a' -> 0, 'b' -> 1, etc.
    correctAnswerText = question.options[optionIndex] || correctAnswerText;
}

const correctIndex = question.options.indexOf(correctAnswerText);

      const correctOptionLetter = correctIndex !== -1 ? String.fromCharCode(65 + correctIndex) : null;
      console.log("Correct Option (Letter):", correctOptionLetter);

      // User's answer
      const userAnswer = userAnswers[index] || null;
      console.log("User Answer (Letter):", userAnswer);

      // Score Calculation Check
      if (userAnswer === correctOptionLetter) {
          correctAnswers++;
      }

      quizData.push({
          q: question.question,
          o: question.options,
          c: correctOptionLetter,
          u: userAnswer
      });
      
  });

  console.log("Final Score:", correctAnswers);
  return { correctAnswers, quizData };
}

// API QUIZ SUBMISSION
async function submitAPIQuiz(questions, userAnswers) {
  const category = getCategoryFromUrl();
  
  const { correctAnswers, quizData } = calculateScore(questions, userAnswers);

  // Display quiz result
  const quizContainer = document.getElementById('quiz-container');
  const resultsContainer = document.createElement('div');
  resultsContainer.id = 'results-container';
  resultsContainer.innerHTML = `<h2>Quiz Results</h2><p>Your score: ${correctAnswers} / ${questions.length}</p>`;

  quizContainer.innerHTML = '';
  quizContainer.appendChild(resultsContainer);

  const restartButton = document.createElement('button');
  restartButton.textContent = 'Restart Quiz';
  restartButton.addEventListener('click', () => {
      location.reload();
  });
  resultsContainer.appendChild(restartButton);

  const homeButton = document.createElement('button');
  homeButton.textContent = 'Go to Home';
  homeButton.addEventListener('click', () => {
      window.location.href = '/';
  });
  resultsContainer.appendChild(homeButton);

  // Send quiz progress to backend
  try {
      const response = await fetch('/save-quiz-progress', {
          method: 'POST',
          headers: {'Content-Type': 'application/json'},
          body: JSON.stringify({
              category: category,
              score: correctAnswers,
              questions_json: JSON.stringify(quizData)
          })
      });
      const data = await response.json();
      alert(data.message);
  } catch (error) {
      alert("Error in saving progress!");
      console.log('Error saving progress: ', error);
  }
}




// Initialize the quiz
const userAnswers = [];
fetchAndDisplayQuiz();