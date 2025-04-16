document.addEventListener('DOMContentLoaded', function () {


  //LOGIN / REGISTER FORM DISPLAY 
  const navbar = document.getElementById('navbar');
  if (navbar) {
    // LOGIN FORM POP-UP
    const loginForm = setupModal("loginForm", "logBtn", "closeX");

    // REGISTRATION FORM POP-UP
    const registerForm = setupModal("registerForm", "registerBtn", "closeForm");

    //SWITCHING BETWEEN FORMS
    const signup = document.getElementById("register");
    const signin = document.getElementById("signin");

    if (signup) {
      signup.onclick = function () {
        if (loginForm) loginForm.style.display = "none";
        if (registerForm) registerForm.style.display = "flex";
      };
    }

    if (signin) {
      signin.onclick = function () {
        if (registerForm) registerForm.style.display = "none";
        if (loginForm) loginForm.style.display = "flex";
      };
    }
    // Register form validation
    if (registerForm) {
      registerForm.addEventListener('submit', function (event) {
        const username = document.getElementById('username').value;
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const password2 = document.getElementById('password2').value;

        // Validate if all fields are filled
        if (!username || !email || !password || !password2) {
          alert("Please fill in all the fields");
          event.preventDefault();  // Prevent form submission
          return;
        }

        // Validate if passwords match
        if (password !== password2) {
          alert("Passwords do not match");
          event.preventDefault();  // Prevent form submission
          return;
        }

        // Check if password meets criteria
        if (password.length < 6) {
          alert("Password must be at least 6 characters");
          event.preventDefault();  // Prevent form submission
          return;
        }
      });
    }


    //QUIZ GENERATION FORM DISPLAY
    const genForm = document.getElementById('generate');
    genForm.onclick = function () {
      document.getElementById("gen").style.display = "flex";
    }

    const genClose = document.getElementById('closeGForm');
    genClose.onclick = function () {
      document.getElementById("gen").style.display = "none";
    }
  }



  //REGISTER
  document.getElementById('regBtn').addEventListener('click', async () => {
    const username = document.getElementById('username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const password2 = document.getElementById('password2').value;

    try {
      const response = await fetch('/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, email, password, password2 }),
      });

      const data = await response.json();
      alert(data.message); // Show alert with server message

      if (data.success) {
        document.getElementById('registerForm').style.display = 'none';
        document.getElementById('loginForm').style.display = 'flex';
      }
    } catch (error) {
      console.error('Error registering:', error);
      alert('An error occurred during registration.');
    }
  });




  //LOGIN
  document.getElementById('loginBtn').addEventListener('click', async (e) => {
    e.preventDefault();
    const user = document.getElementById('user').value;
    const password3 = document.getElementById('password3').value; // or password

    try {
      const response = await fetch('/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user, password3 }), // Corrected line
      });

      const data = await response.json();
      alert(data.message);

      if (data.success) {
        console.log("login successful");
        document.getElementById('loginForm').style.display = 'none';
        document.getElementById('mainBtn').style.display = 'none';
        document.getElementById('user-info').style.display = 'block';
        document.getElementById('userNameDisplay').textContent = "Welcome " + user;
      }
    } catch (error) {
      console.error('Error during login:', error);
      alert('An error occurred during login.');
    }
  });




  //LOGOUT
  document.getElementById('logoutButton').addEventListener('click', async () => {
    try {
      const response = await fetch('logout', { method: 'POST' });
      const data = await response.json();
      alert(data.message);
      if (data.success) {
        console.log("logout successful");
        document.getElementById('mainBtn').style.display = 'block';
        document.getElementById('user-info').style.display = 'none';
        this.location.reload();
      }
    } catch (error) {
      console.log('Error logging out: ', error);
      alert("An error occurred during logout.")
    }
  })

  //ExamPreparation Section Display
  document.getElementById('examLink').addEventListener('click', () => {
    document.getElementById('exam').style.display = 'block';
  });


  //ROUTE GENERATION FOR EACH QUIZ CATEGORY IN SUB-MENU
  document.querySelectorAll('.quiz-item').forEach(item => {
    item.addEventListener('click', () => {
      const category = item.getAttribute('data-category');
      fetch('check-login')
        .then(response => response.json())
        .then(data => {
          if (data.isLoggedIn) {
            // Redirect to quiz.html with the selected category
            window.location.href = `quiz.html?category=${category}`;
          } else {
            let parent = item.parentNode;
            showPopup(parent, category);
          }
        })
    });
  });

  document.querySelectorAll('.course-card').forEach(card => {
    card.addEventListener('click', () => {
      const category = card.getAttribute('data-category').trim();
      document.getElementById('popupTitle').textContent = category;
      document.getElementById('overlay').style.display = 'block';
      document.getElementById('exam-menu-popup').style.display = 'block';
    });
  });
  document.getElementById('close-exam-popup').addEventListener('click', closePopupHandler);
  document.getElementById('overlay').addEventListener('click', closePopupHandler);


  //USER PROGRESS DISPLAY
  document.getElementById("progress").addEventListener("click", async () => {
    const progressContainer = document.getElementById("progress-container");

    // Toggle visibility
    if (progressContainer.style.display === "none") {
      progressContainer.style.display = "block";
    } else {
      progressContainer.style.display = "none";
      return;
    }

    try {
      const response = await fetch('/get-quiz-progress');
      const progressData = await response.json();

      const tableBody = document.querySelector("#progress-table tbody");
      tableBody.innerHTML = ""; // Clear previous data

      progressData.forEach(progress => {
        const row = document.createElement("tr");
        row.innerHTML = `
                <td>${progress.category}</td>
                <td>${progress.score}</td>
                <td>${new Date(progress.submission_time).toLocaleString()}</td>
                <td>
                    <button class="view-quiz-btn" data-id="${progress.progress_id}">View</button>
                </td>
            `;
        tableBody.appendChild(row);
      });

      // Add event listeners to all "View" buttons
      document.querySelectorAll(".view-quiz-btn").forEach(button => {
        button.addEventListener("click", async (event) => {
          const progressId = event.target.getAttribute("data-id");
          await fetchAndDisplayQuiz(progressId);
        });
      });

    } catch (error) {
      console.error("Error fetching progress:", error);
    }
  });

  // Close QuizHistoryModal when clicking close button
  document.querySelector(".quiz-close-btn").addEventListener("click", () => {
    document.getElementById("quiz-modal").style.display = "none";
  });



  document.getElementById('quizForm').addEventListener("submit", async function (event) {
    event.preventDefault(); // Prevent form from submitting normally

    try {
      const response = await fetch('check-login');
      const data = await response.json();

      if (data.isLoggedIn) {
        const quizType = document.getElementById("quizType").value;
        const topic = document.getElementById("topic").value.toLowerCase().trim(); // Convert to lowercase & remove extra spaces
        const difficulty = document.getElementById("difficulty").value;
        const numQuestions = document.getElementById("numQuestions").value;

        // Redirect to quiz.html with selected values
        window.location.href = `quiz.html?quiz-type=${quizType}&category=${topic}&difficulty=${difficulty}&limit=${numQuestions}`;
      } else {
        alert("You have to login to generate the quiz.");
        document.getElementById("gen").style.display = 'none';
        document.getElementById("loginForm").style.display = 'flex';
      }
    } catch (error) {
      console.error("Error checking login status:", error);
    }
  });

 
  let selectedCategory = "";
  let selectedDifficulty = "";

  // Handle course selection
  document.querySelectorAll(".course-card").forEach(card => {
    card.addEventListener("click", () => {
      selectedCategory = card.getAttribute("data-category");  // ✅ Store category
      document.getElementById("popupTitle").textContent = `Selected: ${selectedCategory}`;

      // Show the difficulty popup
      document.getElementById("exam-menu-popup").style.display = "block";
      document.getElementById("overlay").style.display = "block";
    });
  });

  // Handle difficulty selection
  document.querySelectorAll(".level-btn li").forEach(level => {
    level.addEventListener("click", () => {
      selectedDifficulty = level.textContent.trim();  // ✅ Store difficulty

      console.log("✅ Category:", selectedCategory);
      console.log("✅ Difficulty:", selectedDifficulty);

      // Fetch questions with selected values
      fetchQuestions(selectedCategory, selectedDifficulty);

      // Hide popup after selection
      document.getElementById("exam-menu-popup").style.display = "none";
      document.getElementById("overlay").style.display = "none";
    });
  });


  //ADMIN PANEL OPENING
  document.addEventListener("keydown", function (event) {
    if (event.ctrlKey && event.shiftKey && event.key === "A") {
        window.location.href = "/admin-login";
    }
  });


});


/*-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------*/



//TO CHECK IF USER SESSION IS ONGOING
async function checkSessionStatus() {
  const res = await fetch('/check-login');
  const data = await res.json();

  if (data.isLoggedIn) {
    document.getElementById('loginForm').style.display = 'none';
    document.getElementById('mainBtn').style.display = 'none';
    document.getElementById('user-info').style.display = 'block';
    document.getElementById('userNameDisplay').textContent = "Welcome " + data.username;
  } else {
    document.getElementById('mainBtn').style.display = 'block';
    document.getElementById('user-info').style.display = 'none';
  }
}
window.onload = checkSessionStatus;





// Function to handle modal display - LOGIN, REGISTER & QUIZ GENERATOR FORM
function setupModal(modalId, openButtonId, closeButtonId, openCallback, closeCallback) {
  const modal = document.getElementById(modalId);
  const openButton = document.getElementById(openButtonId);
  const closeButton = document.getElementById(closeButtonId);

  if (openButton) {
    openButton.onclick = function () {
      if (openCallback) openCallback();
      modal.style.display = "flex";
    };
  }

  if (closeButton) {
    closeButton.onclick = function () {
      if (closeCallback) closeCallback();
      modal.style.display = "none";
    };
  }

  window.onclick = function (event) {
    if (event.target === modal) {
      if (closeCallback) closeCallback();
      modal.style.display = "none";
    }
  };

  return modal; // Return the modal element for other operations if needed
}

//List Sub Topic POP-UP
function displayList(list, close) {

  document.getElementById(list).style.display = "block";
  document.getElementById(close).onclick = function () {
    document.getElementById(list).style.display = "none";
  }
}

//POP UP MESSAGE TO ASK WHETHER TO STORE PROGRESS OR NOT (if user is not logged in)
function showPopup(parent, category) {
  parent.style.display = 'none';
  document.getElementById('popup').style.display = 'flex';

  document.getElementById('yesButton').addEventListener('click', function () {
    document.getElementById('popup').style.display = 'none';
    document.getElementById('loginForm').style.display = 'flex';
  });

  document.getElementById('noButton').addEventListener('click', function () {
    document.getElementById('popup').style.display = 'none';
    window.location.href = `quiz.html?category=${category}`;
  });
}

function closeQuizPopup() {
  document.getElementById("quizPopup").style.display = "none";
}

// Function to load quiz progress into the table
async function loadQuizProgress() {
  try {
    const response = await fetch('/get-quiz-progress');
    const progressData = await response.json();
    const tableBody = document.querySelector("#progress-table tbody");

    tableBody.innerHTML = ""; // Clear existing rows

    progressData.forEach((progress, index) => {
      const row = document.createElement("tr");

      row.innerHTML = `
              <td>${progress.category}</td>
              <td>${progress.score}</td>
              <td>${progress.submission_time}</td>
              <td><button class="view-quiz-btn" data-id="${progress.id}">View Details</button></td>
          `;

      tableBody.appendChild(row);
    });

    // Attach event listeners after elements are added
    document.querySelectorAll(".view-quiz-btn").forEach((btn) => {
      btn.addEventListener("click", function () {
        const progressId = this.getAttribute("data-id");
        fetchAndDisplayQuiz(progressId);
      });
    });

    // Show the progress container
    document.getElementById("progress-container").style.display = "block";
  } catch (error) {
    console.log("Error loading quiz progress:", error);
  }
}


//FUNCTION TO DISPLAY PREVIOUS QUIZ TO THE USER
async function fetchAndDisplayQuiz(progressId) {
  try {
    const response = await fetch(`/get-quiz-details/${progressId}`);
    const quizData = await response.json();

    const quizDetailsDiv = document.getElementById("quiz-details");
    const modal = document.getElementById("quiz-modal");

    quizDetailsDiv.innerHTML = ""; // Clear previous content

    quizData.forEach((q, index) => {
      const questionDiv = document.createElement("div");
      questionDiv.classList.add("quiz-question");

      //const isLetterBased = q.c.length === 1 && ["A", "B", "C", "D"].includes(q.c); 
      const isLetterBased = q.c && q.c.length === 1 && ["A", "B", "C", "D"].includes(q.c);
 

      const optionsHtml = q.o.map((option, i) => {
        let className = "";
        let optionLetter = String.fromCharCode(65 + i); // Convert index to 'A', 'B', 'C', 'D'

        if (isLetterBased) {
          // API Quiz: Comparing letters
          if (optionLetter === q.u) {
            className = optionLetter === q.c ? "correct-answer" : "wrong-answer";
          }
          if (optionLetter === q.c) className = "correct-answer";
          return `<li class="${className}">${optionLetter}: ${option}</li>`;
        } else {
          // Exam Quiz: Comparing full text answers
          if (option === q.u) {
            className = option === q.c ? "correct-answer" : "wrong-answer";
          }
          if (option === q.c) className = "correct-answer";
          return `<li class="${className}">${option}</li>`;
        }
      }).join("");

      questionDiv.innerHTML = `
              <p><strong>Q${index + 1}:</strong> ${q.q}</p>
              <ul>${optionsHtml}</ul>
          `;

      quizDetailsDiv.appendChild(questionDiv);
    });

    modal.style.display = "flex"; // Show modal

  } catch (error) {
    console.error("Error fetching quiz details:", error);
  }
}


//EXAM MENU POPUP
function closePopupHandler() {
  document.getElementById('overlay').style.display = 'none';
  document.getElementById('exam-menu-popup').style.display = 'none';
}


//FUNCTION TO FETCH Questions for EXAM PREPRATION
async function fetchQuestions(category, subCategory) {
  if (!category || !subCategory) {
    console.error("🚨 Missing category or difficulty!");
    alert("Please select a category and difficulty level.");
    return;
  }

  try {
    const url = `/get-questions?category=${encodeURIComponent(category)}&sub_category=${encodeURIComponent(subCategory)}`;
    console.log("🔍 Fetching from URL:", url);

    const response = await fetch(url);
    if (!response.ok) throw new Error(`Failed to fetch questions: ${response.status}`);

    const data = await response.json();
    if (!data.length) {
      alert("No questions found for the selected category and difficulty.");
      return;
    }

    // Process questions
    const questions = data.map(q => ({
      id: q.id,
      question: q.question,
      options: [q.option_a, q.option_b, q.option_c, q.option_d],
      correct_answer: q.correct_answer
    }));

    console.log("Questions Received:", questions);

    // Store data in a global variable or redirect
    window.location.href = `/examQuiz.html?category=${category}&sub-category=${subCategory}`;
  } catch (error) {
    console.error("Error fetching questions:", error);
    alert("Error loading questions. Please try again.");
  }
}