
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE ExamPreparation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255) NOT NULL, -- Exam name
    sub_category VARCHAR(50) NOT NULL, -- Difficulty level (easy, medium, hard)
    question TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL
);

CREATE TABLE quiz_progress (
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category VARCHAR(255),
    score INT,
    questions_json JSON, -- Store full quiz data in JSON format
    submission_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

ALTER TABLE quiz_progress ADD COLUMN level VARCHAR(50) NULL;

select * from quizzes;

CREATE TABLE quizzes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_name VARCHAR(50),
    question TEXT,
    option1 VARCHAR(255),
    option2 VARCHAR(255),
    option3 VARCHAR(255),
    option4 VARCHAR(255),
    answer VARCHAR(255)
);

select * from quiz_progress;


/*GK Tables*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'history', question_text, option_a, option_b, option_c, option_d, correct_option FROM HistoriesMysteries;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'science', question_text, option_a, option_b, option_c, option_d, correct_option FROM ScienceTechnology;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'geography', question_text, option_a, option_b, option_c, option_d, correct_option FROM WorldGeography;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'quotes', question_text, option_a, option_b, option_c, option_d, correct_option FROM FamousQuotesAuthors;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'music', question_text, option_a, option_b, option_c, option_d, correct_option FROM MusicAges;


/*Pop Culture Tables*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'musicArtist', question_text, option_a, option_b, option_c, option_d, correct_option FROM Music;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'booksAuthors', question_text, option_a, option_b, option_c, option_d, correct_option FROM Books;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'videoGames', question_text, option_a, option_b, option_c, option_d, correct_option FROM VideoGames;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'celebTrivia', question_text, option_a, option_b, option_c, option_d, correct_option FROM CelebrityTrivia;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'movie', question_text, option_a, option_b, option_c, option_d, correct_option FROM MoviesTVShows;


/*Sports & Fitness*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Football', question_text, option_a, option_b, option_c, option_d, correct_option FROM Football;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Basketball', question_text, option_a, option_b, option_c, option_d, correct_option FROM Basketball;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Cricket', question_text, option_a, option_b, option_c, option_d, correct_option FROM Cricket;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Fitness', question_text, option_a, option_b, option_c, option_d, correct_option FROM Fitness;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Olympic', question_text, option_a, option_b, option_c, option_d, correct_option FROM Olympic;


/*Education & Learning*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Maths', question_text, option_a, option_b, option_c, option_d, correct_option FROM Maths;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'GeneralScience', question_text, option_a, option_b, option_c, option_d, correct_option FROM GeneralScience;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'LanguageLiterature', question_text, option_a, option_b, option_c, option_d, correct_option FROM LanguageLiterature;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'HistoryCulture', question_text, option_a, option_b, option_c, option_d, correct_option FROM HistoryCulture;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Computer', question_text, option_a, option_b, option_c, option_d, correct_option FROM Computer;


/*Games Tables*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'RetroArcadeGames', question_text, option_a, option_b, option_c, option_d, correct_option FROM RetroArcadeGames;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'BoardPuzzles', question_text, option_a, option_b, option_c, option_d, correct_option FROM BoardPuzzles;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'FunFacts', question_text, option_a, option_b, option_c, option_d, correct_option FROM FunFacts;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'FoodDrink', question_text, option_a, option_b, option_c, option_d, correct_option FROM FoodDrink;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Travel', question_text, option_a, option_b, option_c, option_d, correct_option FROM Travel;



/*Holiday Tables*/
INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Christmas', question_text, option_a, option_b, option_c, option_d, correct_option FROM Christmas;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Halloween', question_text, option_a, option_b, option_c, option_d, correct_option FROM Halloween;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Valentine', question_text, option_a, option_b, option_c, option_d, correct_option FROM Valentine;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'Easter', question_text, option_a, option_b, option_c, option_d, correct_option FROM Easter;

INSERT INTO quizzes (quiz_name, question, option1, option2, option3, option4, answer)
SELECT 'NewYear', question_text, option_a, option_b, option_c, option_d, correct_option FROM NewYear;


select * from ExamPreparation;

use intelliquiz;
