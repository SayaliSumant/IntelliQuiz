document.getElementById('admin-login-form')?.addEventListener('submit', async function (event) {
    event.preventDefault();
    const username = document.getElementById('admin-username').value;
    const password = document.getElementById('admin-password').value;

    const response = await fetch('/admin-login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, password })
    });

    if (response.ok) {
        localStorage.setItem("adminLoggedIn", "true");
        window.location.href = "adminDashboard.html";
    } else {
        alert("Invalid credentials!");
    }
});


// Logout function
function logout() {
    localStorage.removeItem("adminLoggedIn");
    window.location.href = "admin-login.html";
}

// Show different sections in admin panel
function showSection(sectionId) {
    document.querySelectorAll('main section').forEach(section => {
        section.style.display = 'none';
    });

    document.getElementById(sectionId).style.display = 'block';
}

// Fetch users (to be replaced with real API)
async function fetchUsers() {
    const response = await fetch('/get-users');
    const users = await response.json();
    
    const userList = document.getElementById('user-list');
    userList.innerHTML = users.map(user => `
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td><button onclick="deleteUser(${user.id})">Delete</button></td>
        </tr>
    `).join('');
}

// Fetch quizzes (to be replaced with real API)
/*async function fetchQuizzes() {
    const response = await fetch('/get-quizzes');
    const quizzes = await response.json();
    
    const quizList = document.getElementById('quiz-list');
    quizList.innerHTML = quizzes.map(quiz => `
        <tr>
            <td>${quiz.id}</td>
            <td>${quiz.category}</td>
            <td><button onclick="deleteQuiz(${quiz.id})">Delete</button></td>
        </tr>
    `).join('');
}*/

//WORKING CODE
/*async function fetchQuizzes() {
    try {
        const response = await fetch('/admin/get-quizzes'); // Use the correct endpoint
        if (!response.ok) throw new Error("Failed to fetch quizzes");

        const quizzes = await response.json();
        console.log("Fetched quizzes:", quizzes);  // Debugging

        const quizList = document.getElementById('quiz-list');
        if (!quizList) {
            console.error("Element with id 'quiz-list' not found!");
            return;
        }
        i = 1;
        quizList.innerHTML = quizzes.length
            ? quizzes.map(quiz => `
                <tr>
                    <td>${i++}</td>
                    <td>${quiz.quiz_name? quiz.quiz_name : quiz.category}</td>
                    <td>${quiz.quiz_name? "N/A": quiz.sub_category}</td>
                    <td>
                        <button onclick="deleteQuiz(${quiz.id})">Delete</button>
                    </td>
                </tr>
              `).join('')
            : `<tr><td colspan="3">No quizzes found</td></tr>`; // Show message if empty
        
    } catch (error) {
        console.error("Error fetching quizzes:", error);
    }
}*/

let quizzesData = []; // Store all quizzes
let currentPage = 1;
const limit = 10; // Number of quizzes per page

async function fetchQuizzes() {
    try {
        const response = await fetch('/admin/get-quizzes'); // Fetch all quizzes at once
        if (!response.ok) throw new Error("Failed to fetch quizzes");

        quizzesData = await response.json();
        console.log("Fetched quizzes:", quizzesData);  // Debugging

        renderQuizzes();
        updatePaginationControls();
    } catch (error) {
        console.error("Error fetching quizzes:", error);
    }
}

// Render quizzes based on current page
function renderQuizzes() {
    const quizList = document.getElementById('quiz-list');
    if (!quizList) {
        console.error("Element with id 'quiz-list' not found!");
        return;
    }

    let start = (currentPage - 1) * limit;
    let end = start + limit;
    let paginatedQuizzes = quizzesData.slice(start, end);

    let i = start + 1;
    quizList.innerHTML = paginatedQuizzes.length
        ? paginatedQuizzes.map(quiz => `
            <tr>
                <td>${i++}</td>
                <td>${quiz.quiz_name ? quiz.quiz_name : quiz.category}</td>
                <td>${quiz.quiz_name ? "N/A" : quiz.sub_category}</td>
                <td>
                    <button style="margin-right: "5px";" onclick="deleteQuiz('${quiz.quiz_name ? quiz.quiz_name : quiz.category}', '${quiz.quiz_name ? "N/A" : quiz.sub_category}')">Delete</button>
                    <button onclick="showQuiz('${quiz.quiz_name ? quiz.quiz_name : quiz.category}', '${quiz.quiz_name ? "N/A" : quiz.sub_category}')">Display</button>
                </td>
            </tr>
          `).join('')
        : `<tr><td colspan="4">No quizzes found</td></tr>`;
}
// Update pagination buttons
function updatePaginationControls() {
    const totalPages = Math.ceil(quizzesData.length / limit);
    const paginationContainer = document.getElementById("pagination");

    paginationContainer.innerHTML = `
        <button onclick="changePage(${currentPage - 1})" ${currentPage === 1 ? "disabled" : ""}>Prev</button>
        <span> Page ${currentPage} of ${totalPages} </span>
        <button onclick="changePage(${currentPage + 1})" ${currentPage === totalPages ? "disabled" : ""}>Next</button>
    `;
}
// Change page
function changePage(newPage) {
    if (newPage < 1 || newPage > Math.ceil(quizzesData.length / limit)) return;
    currentPage = newPage;
    renderQuizzes();
    updatePaginationControls();
}
// Call the function when the admin dashboard loads
if (window.location.pathname.includes("adminDashboard.html")) {
    fetchQuizzes();
}



/*async function showQuiz(category,sub_category) {
    try {
        const response = await fetch(`/admin/show-quiz/${encodeURIComponent(category)}/${encodeURIComponent(sub_category)}`, {
            method: "GET",
        });
        
        const result = await response.json();
        const quizDisplay = document.getElementById('quizDisplay');
    if (!quizDisplay) {
        console.error("Element with id 'quizDisplay' not found!");
        return;
    }
    i = 1;
    quizDisplay.innerHTML = result.length
        ? result.map(quiz => `
            <tr>
                <td>${i++}</td>
                <td>${quiz.question}</td>
                <td>${quiz.option1 ? quiz.option1 : quiz.option_a}</td>
                <td>${quiz.option2 ? quiz.option2 : quiz.option_b}</td>
                <td>${quiz.option3 ? quiz.option3 : quiz.option_c}</td>
                <td>${quiz.option4 ? quiz.option4 : quiz.option_d}</td>
                <td>${quiz.answer? quiz.answer : quiz.correct_answer}</td>
            </tr>
          `).join('')
        : `<tr><td colspan="3">No quizzes found</td></tr>`; // Show message if empty
      
    } catch (error) {
        console.error("Error deleting quiz:", error);
    }
}*/
async function showQuiz(category, sub_category) {
    try {
        const response = await fetch(`/admin/show-quiz/${encodeURIComponent(category)}/${encodeURIComponent(sub_category)}`);

        if (!response.ok) {
            throw new Error(`Failed to fetch quiz data: ${response.statusText}`);
        }

        const result = await response.json();
        const quizTable = document.getElementById('quizDisplay');
        const quizModal = document.getElementById('quizModal');

        if (!quizTable || !quizModal) {
            console.error("Modal elements not found!");
            return;
        }

        let i = 1;
        quizTable.innerHTML = result.length
            ? result.map(quiz => `
                <tr>
                    <td>${i++}</td>
                    <td>${quiz.question}</td>
                    <td>${quiz.option1 || quiz.option_a}</td>
                    <td>${quiz.option2 || quiz.option_b}</td>
                    <td>${quiz.option3 || quiz.option_c}</td>
                    <td>${quiz.option4 || quiz.option_d}</td>
                    <td>${quiz.answer || quiz.correct_answer}</td>
                </tr>
            `).join('')
            : `<tr><td colspan="7">No quizzes found</td></tr>`;

        // Show the modal
        quizModal.style.display = "block";

    } catch (error) {
        console.error("Error fetching quiz details:", error);
    }
}

// Function to Close the Modal
function closeQuizModal() {
    document.getElementById('quizModal').style.display = "none";
}

// Close modal when clicking outside
window.onclick = function(event) {
    const modal = document.getElementById('quizModal');
    if (event.target === modal) {
        modal.style.display = "none";
    }
};

function newQuiz(){
    document.getElementById('addQuizModal').style.display = 'flex';
}
/*function addQuiz() {
    const category = document.getElementById("category").value.trim();
    const subCategory = document.getElementById("sub_category").value;
    const questionBlocks = document.querySelectorAll(".question-block");

    if (!category) {
        alert("Please enter a category.");
        return;
    }

    if (questionBlocks.length !== 25) {
        alert("You must add exactly 25 questions.");
        return;
    }

    const questions = [];
    for (let i = 0; i < questionBlocks.length; i++) {
        const questionText = questionBlocks[i].querySelector(".question-text").value.trim();
        const options = [
            questionBlocks[i].querySelector(".option1").value.trim(),
            questionBlocks[i].querySelector(".option2").value.trim(),
            questionBlocks[i].querySelector(".option3").value.trim(),
            questionBlocks[i].querySelector(".option4").value.trim()
        ];
        const correctOption = questionBlocks[i].querySelector(".correct-option").value;

        if (!questionText || options.some(opt => opt === "")) {
            alert(`All fields must be filled for question ${i + 1}.`);
            return;
        }

        questions.push({
            question: questionText,
            options: options,
            correct: correctOption
        });
    }

    const quizData = { category, sub_category: subCategory, questions };

    fetch('/admin/add-quiz', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(quizData)
    })
    .then(response => response.json())
    .then(result => {
        alert(result.message);
        if (result.message === "Quiz added successfully!") {
            location.reload();
        }
    })
    .catch(error => {
        console.error("Error adding quiz:", error);
        alert("Failed to add quiz!");
    });
}*/

/*function generateQuestions() {
    const questionsContainer = document.getElementById("questions-container");
    questionsContainer.innerHTML = "";  // Clear previous questions

    for (let i = 1; i <= 25; i++) {
        const questionBlock = document.createElement("div");
        questionBlock.classList.add("question-block");

        questionBlock.innerHTML = `
            <label>Q${i}: </label>
            <input type="text" class="question-text" required placeholder="Enter question">
            <br>
            <label>Options:</label>
            <input type="text" class="option1" required placeholder="Option A">
            <input type="text" class="option2" required placeholder="Option B">
            <input type="text" class="option3" required placeholder="Option C">
            <input type="text" class="option4" required placeholder="Option D">
            <br>
            <label>Correct Answer:</label>
            <select class="correct-option">
                <option value="1">A</option>
                <option value="2">B</option>
                <option value="3">C</option>
                <option value="4">D</option>
            </select>
            <hr>
        `;

        questionsContainer.appendChild(questionBlock);
    }

    document.getElementById("question-count").textContent = "Questions Added: 25 / 25";
}*/

let questions = [];

function openModal(modalId) {
    document.getElementById(modalId).style.display = "block";
}

function closeModal(modalId) {
    document.getElementById(modalId).style.display = "none";
}

// Add question logic
function addQuestion() {
    if (questions.length >= 25) {
        alert("You can only add 25 questions!");
        return;
    }

    const question = document.getElementById("question").value.trim();
    const optionA = document.getElementById("optionA").value.trim();
    const optionB = document.getElementById("optionB").value.trim();
    const optionC = document.getElementById("optionC").value.trim();
    const optionD = document.getElementById("optionD").value.trim();
    const correct = document.getElementById("correctAnswer").value;

    if (!question || !optionA || !optionB || !optionC || !optionD) {
        alert("All fields are required!");
        return;
    }

    questions.push({
        question, 
        options: [optionA, optionB, optionC, optionD], 
        correct
    });

    document.getElementById("questionCount").textContent = `Questions Added: ${questions.length}/25`;

    if (questions.length === 25) {
        document.getElementById("submitQuiz").disabled = false;
    }

    // Clear input fields
    document.getElementById("question").value = "";
    document.getElementById("optionA").value = "";
    document.getElementById("optionB").value = "";
    document.getElementById("optionC").value = "";
    document.getElementById("optionD").value = "";
}

// Submit the quiz
document.getElementById("questionsForm").addEventListener("submit", async function(event) {
    event.preventDefault();

    const category = document.getElementById("category").value.trim();
    const sub_category = document.getElementById("sub_category").value.trim();

    if (questions.length !== 25) {
        alert("Please add exactly 25 questions!");
        return;
    }

    try {
        const response = await fetch('/admin/add-quiz', {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ category, sub_category, questions })
        });

        const result = await response.json();
        alert(result.message);

        if (response.ok) {
            closeModal("addQuestionsModal");
            questions = [];
            document.getElementById("questionCount").textContent = "Questions Added: 0/25";
        }

    } catch (error) {
        console.error("Error adding quiz:", error);
        alert("Failed to add quiz!");
    }
});


async function deleteQuiz(category, sub_category) {
    if (!confirm("Are you sure you want to delete this quiz?")) return;

    try {
        const response = await fetch(`/admin/delete-quiz/${encodeURIComponent(category)}/${encodeURIComponent(sub_category)}`, {
            method: "DELETE",
        });
        
        const result = await response.json();
        alert(result);

        // Refresh the quiz list after deletion
        fetchQuizzes();

    } catch (error) {
        console.error("Error deleting quiz:", error);
    }
}
/*function deleteQuiz(category, subCategory) {
    const url = `/admin/delete-quiz/${encodeURIComponent(category)}/${encodeURIComponent(subCategory)}`;
    console.log("Deleting quiz at:", url); // Debugging

    fetch(url, { method: 'DELETE' })
        .then(response => {
            if (!response.ok) {
                throw new Error(`Server error: ${response.status}`);
            }
            return response.text();  // Get raw response to debug
        })
        .then(text => {
            console.log("Server response:", text);
            renderQuizzes();  // Refresh quiz list
        })
        .catch(error => console.error("Error deleting quiz:", error));
}*/


// Fetch progress (to be replaced with real API)
async function fetchProgress() {
    const response = await fetch('/get-progress');
    const progress = await response.json();
    
    const progressList = document.getElementById('progress-list');
    progressList.innerHTML = progress.map(p => `
        <tr>
            <td>${p.user}</td>
            <td>${p.category}</td>
            <td>${p.score}</td>
        </tr>
    `).join('');
}

// Load data when page loads
if (window.location.pathname.includes("admin-dashboard.html")) {
    fetchUsers();
    fetchQuizzes();
    fetchProgress();
}

document.getElementById('add-quiz-form')?.addEventListener('submit', async function (event) {
    event.preventDefault();

    const category = document.getElementById('quiz-category').value.trim();
    if (!category) return alert("Please enter a quiz category!");

    try {
        const response = await fetch('/admin/add-quiz', {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ category }),
        });

        const result = await response.json();
        alert(result.message);

        // Refresh the quiz list
        fetchQuizzes();
        document.getElementById('quiz-category').value = ""; // Clear input

    } catch (error) {
        console.error("Error adding quiz:", error);
    }
});
