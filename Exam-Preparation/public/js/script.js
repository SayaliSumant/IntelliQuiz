const courseCards = document.querySelectorAll('.course-card');
const popup = document.getElementById('popup');
const overlay = document.getElementById('overlay');
const popupTitle = document.getElementById('popupTitle');
const closePopup = document.getElementById('closePopup');
const levelButtons = document.querySelectorAll('.level-btn li');

// Show popup when a course is clicked
courseCards.forEach(card => {
    card.addEventListener('click', () => {
        const category = card.getAttribute('data-category').trim();
        popupTitle.textContent = category;
        overlay.style.display = 'block';
        popup.style.display = 'block';
    });
});

// Close popup
closePopup.addEventListener('click', closePopupHandler);
overlay.addEventListener('click', closePopupHandler);

function closePopupHandler() {
    overlay.style.display = 'none';
    popup.style.display = 'none';
}

// Event listener for difficulty selection
levelButtons.forEach(button => {
    button.addEventListener('click', () => {
        const category = popupTitle.textContent.trim();
        const difficultyMap = { "Easy": "easy", "Moderate": "medium", "Difficult": "hard" };
        const difficulty = difficultyMap[button.textContent.trim()];

        if (!category || !difficulty) {
            alert("Invalid Quiz Selection");
            return;
        }

        console.log("Selected Category:", category);
        console.log("Selected Difficulty:", difficulty);

        // Fetch questions from the server
        fetchQuestions(category, difficulty);
    });
});

// Fetch questions from API
async function fetchQuestions(selectedCategory, selectedDifficulty) {
    console.log("Fetching questions for:", selectedCategory, selectedDifficulty);

    // Trim values before building the URL
    const category = selectedCategory.trim();
    const difficulty = selectedDifficulty.trim();

    const url = `/get-questions?category=${encodeURIComponent(category)}&sub_category=${encodeURIComponent(difficulty)}`;
    console.log("Final URL:", url);  // ✅ Log the final URL

    try {
        const response = await fetch(url);

        console.log("Raw Response:", response);

        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }

        const data = await response.json();
        console.log("Fetched Questions:", data);

        if (!Array.isArray(data) || data.length === 0) {
            alert("No questions found for this category and difficulty level.");
            return;
        }

        // Store quiz data in localStorage
        localStorage.setItem('quizQuestions', JSON.stringify(data));
        localStorage.setItem('selectedCategory', category);
        localStorage.setItem('selectedDifficulty', difficulty);

        // Redirect to quiz page
        window.location.href = "/quiz.html";
    } catch (error) {
        console.error("Error fetching questions:", error);
        alert("Error fetching questions. Please try again.");
    }
}
