let currentQuestionIndex = 0;
let score = 0;
let questions = [];
let timer;
let isTimerRunning = false;
const totalTime = 160; // Quiz time in seconds

document.getElementById('start-btn').addEventListener('click', startQuiz);

function startQuiz() {
    console.log("Starting quiz...");

    // Fetch values from localStorage
    const category = localStorage.getItem('selectedCategory');
    const subCategory = localStorage.getItem('selectedDifficulty');

    if (!category || !subCategory) {
        console.error("Category or sub-category not found in localStorage!");
        alert("Please select category and difficulty before starting the quiz.");
        return;
    }

    console.log("🔍 Selected Category:", category);
    console.log("🔍 Selected Difficulty:", subCategory);

    document.getElementById('start-btn').style.display = 'none';
    document.getElementById('submit-btn').style.display = 'inline-block';  // ✅ Show submit button immediately

    fetchQuestions(category, subCategory);
    startTimer();
}

function startTimer() {
    if (isTimerRunning) return;  // Prevent multiple timers
    isTimerRunning = true;

    let timeLeft = totalTime;
    const timerDisplay = document.getElementById('time');

    timer = setInterval(() => {
        timerDisplay.innerText = `${timeLeft} sec`;

        if (timeLeft <= 0) {
            clearInterval(timer);
            submitQuiz();
        }

        timeLeft--;
    }, 1000);
}

function submitQuiz() {
    clearInterval(timer);  // ✅ Stop the timer

    let totalQuestions = questions.length;
    let correctAnswers = 0;
    let unansweredCount = 0;

    questions.forEach((question, index) => {
        const selectedOption = document.querySelector(`input[name="question${index}"]:checked`);

        if (selectedOption) {
            const selectedIdentifier = selectedOption.value.trim();  // A, B, C, D
            const optionIndex = ['A', 'B', 'C', 'D'].indexOf(selectedIdentifier);

            if (optionIndex !== -1) {
                const selectedText = question.options[optionIndex].trim();

                if (selectedText === question.correct_answer.trim()) {
                    correctAnswers++;
                }
            }
        } else {
            unansweredCount++;  // ✅ Count unanswered questions
        }
    });

    // ✅ Validation: Check if all questions are answered
    if (unansweredCount > 0) {
        alert(`⚠️ You have ${unansweredCount} unanswered question(s). Please attempt all questions before submitting.`);
        return;  // ❌ Prevent quiz submission if unanswered questions exist
    }

    document.getElementById('score-display').innerText = correctAnswers;
    document.getElementById('total-questions').innerText = totalQuestions;
    document.getElementById('score-container').style.display = 'block';

    console.log(`✅ Final Score: ${correctAnswers} out of ${totalQuestions}`);

    // ✅ Hide the submit button after submission
    const submitBtn = document.getElementById('submit-btn');
    submitBtn.style.display = 'none';

    // ✅ Show the restart button
    let restartBtn = document.getElementById('restart-btn');

    if (!restartBtn) {
        restartBtn = document.createElement('button');
        restartBtn.id = 'restart-btn';
        restartBtn.innerText = 'Restart Quiz';
        restartBtn.style.display = 'inline-block';
        restartBtn.style.margin = '10px';
        restartBtn.style.padding = '10px 20px';
        restartBtn.style.backgroundColor = '#4CAF50';
        restartBtn.style.color = 'white';
        restartBtn.style.border = 'none';
        restartBtn.style.cursor = 'pointer';

        document.getElementById('quiz-container').appendChild(restartBtn);
    } else {
        restartBtn.style.display = 'inline-block';
    }

    restartBtn.addEventListener('click', () => {
        location.reload();
    });
}

function displayAllQuestions() {
    const questionsContainer = document.getElementById('options-container');
    questionsContainer.innerHTML = '';

    if (!questions || questions.length === 0) {
        console.error("No questions available.");
        alert("No questions available.");
        return;
    }

    questions.forEach((question, index) => {
        const questionElement = document.createElement('div');
        questionElement.classList.add('question-block');

        questionElement.innerHTML = `
            <p><strong>${index + 1}. ${question.question}</strong></p>
            <div>
                <input type="radio" name="question${index}" value="A"> A. ${question.options[0]}<br>
                <input type="radio" name="question${index}" value="B"> B. ${question.options[1]}<br>
                <input type="radio" name="question${index}" value="C"> C. ${question.options[2]}<br>
                <input type="radio" name="question${index}" value="D"> D. ${question.options[3]}
            </div>
        `;

        questionsContainer.appendChild(questionElement);
    });
}

async function fetchQuestions(category, subCategory) {
    try {
        const url = `/get-questions?category=${encodeURIComponent(category)}&sub_category=${encodeURIComponent(subCategory)}`;
        console.log("🔍 Fetching from URL:", url);

        const response = await fetch(url);

        if (!response.ok) {
            throw new Error(`Failed to fetch questions: ${response.status}`);
        }

        const data = await response.json();
        console.log("Fetched Questions:", data);

        if (!data || data.length === 0) {
            alert("No questions found for the selected category and difficulty.");
            return;
        }

        questions = data.map(q => ({
            id: q.id,
            question: q.question,
            options: [q.option_a, q.option_b, q.option_c, q.option_d],
            correct_answer: q.correct_answer
        }));

        console.log("Mapped Questions:", questions);

        displayAllQuestions();  // ✅ Display all questions at once

    } catch (error) {
        console.log("Error fetching questions:", error);
        alert("Error loading questions. Please try again.");
    }
}

document.addEventListener("DOMContentLoaded", () => {
    console.log("DOM fully loaded");

    document.getElementById('start-btn').addEventListener('click', startQuiz);
    document.getElementById('submit-btn').addEventListener('click', submitQuiz);
});