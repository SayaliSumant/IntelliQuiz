CREATE TABLE MoviesTVshows (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO MoviesTVshows (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which movie franchise is known for the line, “May the Force be with you”?', 'Star Trek', 'Star Wars', 'Guardians of the Galaxy', 'The Avengers', 'B'),
('Who played the role of Iron Man in the Marvel Cinematic Universe?', 'Chris Hemsworth', 'Robert Downey Jr.', 'Chris Evans', 'Mark Ruffalo', 'B'),
('What is the name of the coffee shop in the TV show Friends?', 'Central Coffee', 'Java House', 'Central Perk', 'Café Manhattan', 'C'),
('The Indian movie “Baahubali” was directed by:', 'Shankar', 'S.S. Rajamouli', 'Mani Ratnam', 'R. Balki', 'B'),
('In the Harry Potter series, what is the name of Harry’s owl?', 'Hedwig', 'Errol', 'Pigwidgeon', 'Crookshanks', 'A'),
('Which show holds the record for the most Emmy Awards won by a single series?', 'Breaking Bad', 'Friends', 'Game of Thrones', 'The Simpsons', 'C'),
('Who directed the movie "Titanic"?', 'James Cameron', 'Steven Spielberg', 'Christopher Nolan', 'Martin Scorsese', 'A'),
('In the TV show “The Office,” what is the name of the paper company?', 'Dunder Paper', 'Mifflin Paper Co.', 'Dunder Mifflin', 'Scranton Supplies', 'C'),
('Which Indian actor was the first to win an Oscar?', 'Amitabh Bachchan', 'Irrfan Khan', 'Shah Rukh Khan', 'Bhanu Athaiya (Costume Designer)', 'D'),
('Who played the Joker in the movie “The Dark Knight”?', 'Joaquin Phoenix', 'Jared Leto', 'Heath Ledger', 'Jack Nicholson', 'C'),
('What is the highest-grossing movie of all time (as of January 2025)?', 'Titanic', 'Avengers: Endgame', 'Avatar', 'Star Wars: The Force Awakens', 'C'),
('In the TV show Breaking Bad, what is Walter White’s alias?', 'Heisenberg', 'Eisenberg', 'Wexler', 'Schrader', 'A'),
('Which Bollywood movie popularized the line, “Mogambo khush hua”?', 'Mr. India', 'Sholay', 'Don', 'Dilwale Dulhania Le Jayenge', 'A'),
('What is the name of the dragon in the TV series “Game of Thrones”?', 'Drogon', 'Viserion', 'Rhaegal', 'All of the above', 'D'),
('Which actress stars in “The Devil Wears Prada” alongside Meryl Streep?', 'Emma Stone', 'Anne Hathaway', 'Julia Roberts', 'Sandra Bullock', 'B'),
('Who played Spider-Man in the 2002 film adaptation?', 'Tobey Maguire', 'Andrew Garfield', 'Tom Holland', 'Jake Gyllenhaal', 'A'),
('In which movie does the character “Forrest Gump” say, “Life is like a box of chocolates”?', 'Cast Away', 'Big', 'Sleepless in Seattle', 'Forrest Gump', 'D'),
('Which Indian web series is based on the book “Sacred Games”?', 'Mirzapur', 'Sacred Games', 'Made in Heaven', 'Scam 1992', 'B'),
('Who directed the “The Godfather”?', 'Martin Scorsese', 'Quentin Tarantino', 'Francis Ford Coppola', 'Alfred Hitchcock', 'C'),
('What is the name of the fictional country in Black Panther?', 'Zamunda', 'Genosha', 'Wakanda', 'Latveria', 'C'),
('In which Indian movie does the dialogue “Kitne aadmi the” appear?', 'Sholay', 'Deewar', 'Zanjeer', 'Gangs of Wasseypur', 'A'),
('What is the name of the AI in The Avengers: Age of Ultron?', 'Jarvis', 'Vision', 'Ultron', 'Friday', 'C'),
('Which movie franchise is known for the character Dominic Toretto?', 'Fast & Furious', 'Transformers', 'Mission Impossible', 'Die Hard', 'A'),
('In the Indian movie 3 Idiots, what is Rancho’s real name?', 'Farhan Qureshi', 'Raju Rastogi', 'Phunsukh Wangdu', 'Virus', 'C'),
('The TV series “Stranger Things” is set in which decade?', '1970s', '1980s', '1990s', '2000s', 'B');

select * from MoviesTVshows ORDER BY question_id;

CREATE TABLE	CelebrityTrivia (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO CelebrityTrivia (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which Indian actor is known as the “King of Bollywood”?', 'Aamir Khan', 'Hrithik Roshan', 'Shah Rukh Khan', 'Salman Khan', 'C'),
('Who played the role of Black Panther in the Marvel Cinematic Universe?', 'Chadwick Boseman', 'Michael B. Jordan', 'Dwayne Johnson', 'Chadwick Boseman', 'D'),
('Which actress won the Miss World title in 2000, representing India?', 'Priyanka Chopra', 'Aishwarya Rai', 'Sushmita Sen', 'Lara Dutta', 'B'),
('Who is known as the “Queen of Pop”?', 'Britney Spears', 'Madonna', 'Beyoncé', 'Lady Gaga', 'C'),
('Which Bollywood actor is famous for his “Khiladi” movie series?', 'Akshay Kumar', 'Salman Khan', 'Amitabh Bachchan', 'Shah Rukh Khan', 'A'),
('Which actor played Tony Stark (Iron Man) in the Marvel Cinematic Universe?', 'Chris Hemsworth', 'Robert Downey Jr.', 'Chris Evans', 'Robert Downey Jr.', 'B'),
('In which year did Katrina Kaif make her Bollywood debut?', '2002', '2003', '2004', '2005', 'C'),
('Which singer is known for the hit song “Shape of You”?', 'Justin Bieber', 'Ed Sheeran', 'Shawn Mendes', 'Bruno Mars', 'B'),
('Who is the youngest recipient of the Padma Bhushan in the field of music?', 'Lata Mangeshkar', 'Zakir Hussain', 'Ustad Bismillah Khan', 'Ravi Shankar', 'B'),
('Which famous Bollywood actor is known for his role in "Dhoom" series and “War”?', 'Hrithik Roshan', 'Salman Khan', 'Hrithik Roshan', 'Ranveer Singh', 'A'),
('Who is the "Friends" cast member famous for her character Rachel Green?', 'Courteney Cox', 'Jennifer Aniston', 'Lisa Kudrow', 'Matt LeBlanc', 'B'),
('Which Indian actor played the role of "Bajirao" in the film “Bajirao Mastani”?', 'Ranbir Kapoor', 'Ranveer Singh', 'Shahid Kapoor', 'Hrithik Roshan', 'B'),
('Who is the lead actor in the movie “The Pursuit of Happyness”?', 'Denzel Washington', 'Will Smith', 'Jamie Foxx', 'Leonardo DiCaprio', 'B'),
('Which Bollywood actor was awarded the Padma Bhushan in 2019?', 'Rajinikanth', 'Amitabh Bachchan', 'Shah Rukh Khan', 'Akshay Kumar', 'A'),
('Who is the lead singer of the band Coldplay?', 'Chris Martin', 'Jon Bon Jovi', 'Adam Levine', 'Chris Martin', 'A'),
('Which famous Indian cricketer married actress Anushka Sharma?', 'Sourav Ganguly', 'Rahul Dravid', 'Virat Kohli', 'MS Dhoni', 'C'),
('Which Bollywood actress starred in the film “Piku” alongside Amitabh Bachchan and Deepika Padukone?', 'Kareena Kapoor', 'Deepika Padukone', 'Priyanka Chopra', 'Alia Bhatt', 'B'),
('Who is known as the “Night King” in the TV series Game of Thrones?', 'John Snow', 'Richard Brake', 'Nikolaj Coster-Waldau', 'Sean Bean', 'B'),
('Which Indian-origin singer is famous for songs like “Levitating” and “Don\'t Start Now”?', 'A.R. Rahman', 'Charli XCX', 'Dua Lipa', 'Jay Sean', 'C'),
('Which Hollywood star is famous for playing Captain Jack Sparrow in the Pirates of the Caribbean series?', 'Brad Pitt', 'Johnny Depp', 'Johnny Depp', 'Tom Cruise', 'B'),
('Which Indian actor is known as the “Angry Young Man” of Bollywood?', 'Amitabh Bachchan', 'Dharmendra', 'Rajesh Khanna', 'Shah Rukh Khan', 'A'),
('Who won Oscar for Best Actor in 2016 for his role in “The Revenant”?', 'Tom Hanks', 'Leonardo DiCaprio', 'Johnny Depp', 'Leonardo DiCaprio', 'B'),
('Who is the “Queen of Bollywood”?', 'Priyanka Chopra', 'Kareena Kapoor', 'Madhuri Dixit', 'Deepika Padukone', 'D'),
('What is the real name of the famous YouTuber "CarryMinati"?', 'Ajey Nagar', 'Karan Sehgal', 'Tanmay Bhatt', 'Anmol Khatri', 'A'),
('Who was the first Indian actor to be honored with a star on the Hollywood Walk of Fame?', 'Amitabh Bachchan', 'Shah Rukh Khan', 'Rajinikanth', 'Dharmendra', 'A');

select * from CelebrityTrivia ORDER BY question_id;



CREATE TABLE Music (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Music (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who is known as the “King of Pop”?', 'Michael Jackson', 'Justin Timberlake', 'Michael Jackson', 'Usher', 'A'),
('Which genre of music did Elvis Presley primarily perform?', 'Rock and Roll', 'Jazz', 'Blues', 'Country', 'A'),
('The music group The Beatles is from which country?', 'United States', 'United Kingdom', 'Canada', 'Australia', 'B'),
('Who is the “Queen of Soul”?', 'Aretha Franklin', 'Beyoncé', 'Aretha Franklin', 'Whitney Houston', 'A'),
('Which artist is known for popularizing the genre of Reggae worldwide?', 'Bob Marley', 'Jimmy Cliff', 'Bob Marley', 'Shaggy', 'A'),
('Which pop music group is known for songs like “I Want It That Way” and “As Long as You Love Me”?', 'Backstreet Boys', 'NSYNC', 'Backstreet Boys', '98 Degrees', 'A'),
('Who is known as the “King of Rock and Roll”?', 'Chuck Berry', 'Elvis Presley', 'Elvis Presley', 'Buddy Holly', 'B'),
('Beyoncé is a member of which girl group that became famous in the early 2000s?', 'TLC', 'Destiny’s Child', 'Spice Girls', 'Pussycat Dolls', 'B'),
('Which country is known for the genre of K-pop?', 'Japan', 'China', 'South Korea', 'Philippines', 'C'),
('Who released the album “25” in 2015?', 'Adele', 'Beyoncé', 'Adele', 'Taylor Swift', 'A'),
('The song "Thriller" was sung by which artist?', 'Michael Jackson', 'Prince', 'Stevie Wonder', 'James Brown', 'A'),
('Which popular artist is known for the hit song “Shape of You”?', 'Ed Sheeran', 'Justin Bieber', 'Shawn Mendes', 'Drake', 'A'),
('Taylor Swift is primarily known for which genre of music?', 'Country', 'Pop', 'Rock', 'Jazz', 'B'),
('The Rolling Stones are associated with which genre of music?', 'Country', 'Blues', 'Pop', 'Rock', 'D'),
('Which famous rapper released the album “The Marshall Mathers LP”?', 'Drake', 'Eminem', 'Tupac Shakur', 'Jay-Z', 'B'),
('Who is known as the “Princess of Pop”?', 'Rihanna', 'Britney Spears', 'Lady Gaga', 'Ariana Grande', 'B'),
('Which musical genre is associated with artists like Kendrick Lamar and Drake?', 'Hip-hop/Rap', 'Jazz', 'Country', 'EDM', 'A'),
('The famous song “Bohemian Rhapsody” is by which band?', 'The Beatles', 'Queen', 'The Rolling Stones', 'Led Zeppelin', 'B'),
('Lady Gaga is known for which musical genre?', 'Country', 'Pop', 'Jazz', 'Rock', 'B'),
('Which artist is famously known for “Uptown Funk”?', 'Usher', 'Bruno Mars', 'Pharrell Williams', 'Justin Timberlake', 'B'),
('Who is known for the hit album “Reputation”?', 'Ariana Grande', 'Taylor Swift', 'Taylor Swift', 'Rihanna', 'B'),
('What genre of music is Daft Punk associated with?', 'Classical', 'Electronic/Dance', 'Rock', 'Reggae', 'B'),
('Which iconic band performed the famous song “Hey Jude”?', 'The Doors', 'Pink Floyd', 'The Beatles', 'The Rolling Stones', 'C'),
('Which musical artist is known for “Rolling in the Deep” and “Someone Like You”?', 'Rihanna', 'Adele', 'Adele', 'Sia', 'B'),
('Who is the famous Jamaican artist known for songs like “Buffalo Soldier” and “No Woman, No Cry”?', 'Bob Marley', 'Jimmy Cliff', 'Shaggy', 'Toots Hibbert', 'A');

select * from Music ORDER BY question_id;




CREATE TABLE VideoGames (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO VideoGames (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('What is the name of the main character in The Legend of Zelda series?', 'Ganon', 'Link', 'Link', 'Zelda', 'B'),
('In which game would you encounter the character Mario?', 'Super Mario Bros.', 'Sonic the Hedgehog', 'Donkey Kong', 'Pac-Man', 'A'),
('Which video game features a battle royale mode called "Warzone"?', 'Fortnite', 'Apex Legends', 'Call of Duty: Modern Warfare', 'PUBG', 'C'),
('What is the name of the virtual world in Minecraft?', 'The Overworld', 'The Nether', 'The End', 'The Skylands', 'A'),
('What is the main objective in Fortnite?', 'Complete missions', 'Be the last player standing', 'Build the highest structure', 'Collect all items', 'B'),
('Who is the creator of the game "Minecraft"?', 'Tim Sweeney', 'Shigeru Miyamoto', 'Markus Persson', 'John Carmack', 'C'),
('Which character is known for the line “It\'s-a me, Mario!”?', 'Mario', 'Luigi', 'Yoshi', 'Toad', 'A'),
('In League of Legends, which role is typically associated with dealing the most damage in a team?', 'Tank', 'Support', 'Mage', 'ADC (Attack Damage Carry)', 'D'),
('What is the main setting of The Witcher 3: Wild Hunt?', 'Tamriel', 'The Forgotten Realms', 'The Continent', 'Azeroth', 'C'),
('Which game franchise features a character named Master Chief?', 'Call of Duty', 'Destiny', 'Halo', 'Borderlands', 'C'),
('The famous video game series Tomb Raider centers around which character?', 'Lara Croft', 'Samus Aran', 'Jill Valentine', 'Aloy', 'A'),
('In Animal Crossing, what is the name of the anthropomorphic raccoon who runs a shop?', 'Blathers', 'Tom Nook', 'K.K. Slider', 'Isabelle', 'B'),
('Which popular video game features the phrase “No Russian”?', 'Call of Duty: Modern Warfare 2', 'Battlefield 3', 'Call of Duty: Modern Warfare 2', 'Halo 3', 'A'),
('In The Elder Scrolls V: Skyrim, which shout is used to "unleash the power of the Thu\'um"?', 'Fus Ro Dah', 'Yol Toor Shul', 'Fus Ro Dah', 'Laas Yah Nir', 'A'),
('What is the primary objective in Among Us?', 'Solve puzzles', 'Complete tasks while identifying the impostor', 'Build structures', 'Collect resources', 'B'),
('Which Japanese video game company created the iconic game series "Super Mario"?', 'Sega', 'Sony', 'Nintendo', 'Capcom', 'C'),
('In Pokémon, what type of creature is Pikachu?', 'Water', 'Fire', 'Electric', 'Grass', 'C'),
('In Grand Theft Auto V, what is the name of the city where the game takes place?', 'Liberty City', 'Los Santos', 'Vice City', 'San Fierro', 'B'),
('Which video game character is known for his role in the game "Sonic the Hedgehog"?', 'Tails', 'Sonic', 'Knuckles', 'Shadow', 'B'),
('What was the first video game to feature the character Link?', 'The Legend of Zelda: Breath of the Wild', 'The Legend of Zelda: Ocarina of Time', 'The Legend of Zelda', 'The Legend of Zelda: A Link to the Past', 'C'),
('In Overwatch, which character is known for the phrase "Heroes never die"?', 'Mercy', 'Tracer', 'Reinhardt', 'Mercy', 'A'),
('What is the name of the main villain in the Legend of Zelda series?', 'Dark Link', 'Ganon', 'Ganon', 'Vaati', 'B'),
('Which game is set in the fictional world of Rapture?', 'BioShock', 'Borderlands', 'BioShock', 'The Last of Us', 'A'),
('What is the name of the main protagonist in The Last of Us?', 'Sam', 'Joel', 'Ethan', 'Nathan Drake', 'B'),
('Who is the developer of the popular battle royale game Fortnite?', 'Blizzard Entertainment', 'Epic Games', 'Respawn Entertainment', 'Bungie', 'B');

select *from VideoGames order by question_id;




CREATE TABLE Books (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);

INSERT INTO Books (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who wrote the famous book series “Harry Potter”?', 'J.K. Rowling', 'J.R.R. Tolkien', 'Suzanne Collins', 'C.S. Lewis', 'A'),
('Which famous Indian author wrote the book “The White Tiger”?', 'Arundhati Roy', 'Aravind Adiga', 'Vikram Seth', 'Chetan Bhagat', 'B'),
('The book “Pride and Prejudice” was written by which author?', 'Emily Brontë', 'Jane Austen', 'Jane Austen', 'Charles Dickens', 'B'),
('Who is the author of the famous book “The Alchemist”?', 'Paulo Coelho', 'Gabriel García Márquez', 'Haruki Murakami', 'Paulo Coelho', 'A'),
('Which Indian author wrote the book “The God of Small Things”?', 'Amitav Ghosh', 'Ruskin Bond', 'Arundhati Roy', 'Vikram Seth', 'C'),
('Who is the author of “The Hobbit” and “The Lord of the Rings”?', 'J.K. Rowling', 'J.R.R. Tolkien', 'C.S. Lewis', 'George R.R. Martin', 'B'),
('Which Indian author wrote the book “2 States: The Story of My Marriage”?', 'Chetan Bhagat', 'Amish Tripathi', 'Chetan Bhagat', 'Ravi Subramanian', 'A'),
('Who wrote the novel “1984”?', 'Aldous Huxley', 'George Orwell', 'Kurt Vonnegut', 'Ray Bradbury', 'B'),
('Dan Brown is famous for which book series?', 'The Hunger Games', 'Robert Langdon series', 'The Dark Tower series', 'The Percy Jackson series', 'B'),
('Which Indian author wrote “The Immortals of Meluha”?', 'Amish Tripathi', 'Chetan Bhagat', 'Amish Tripathi', 'Vikram Seth', 'A'),
('Who wrote the famous detective series featuring Sherlock Holmes?', 'Sir Arthur Conan Doyle', 'Agatha Christie', 'Edgar Allan Poe', 'Dashiell Hammett', 'A'),
('Which book by Harper Lee became a classic of modern American literature?', 'Go Set a Watchman', 'To Kill a Mockingbird', 'The Great Gatsby', 'Catcher in the Rye', 'B'),
('Who wrote “The Hunger Games” series?', 'Veronica Roth', 'Suzanne Collins', 'Suzanne Collins', 'J.K. Rowling', 'B'),
('Which famous Indian author wrote “The Vault of Vishnu”?', 'Vikram Seth', 'Ashwin Sanghi', 'Chetan Bhagat', 'Ruskin Bond', 'B'),
('Who wrote the classic novel “Moby-Dick”?', 'Herman Melville', 'Herman Melville', 'Mark Twain', 'F. Scott Fitzgerald', 'A'),
('Which Indian author wrote the book “Train to Pakistan”?', 'Khushwant Singh', 'Ruskin Bond', 'Khushwant Singh', 'R.K. Narayan', 'A'),
('Who wrote “Brida”, a novel about a young girl’s spiritual journey?', 'Gabriel García Márquez', 'Paulo Coelho', 'Isabel Allende', 'Haruki Murakami', 'B'),
('Which famous author wrote the book “The Great Gatsby”?', 'F. Scott Fitzgerald', 'Ernest Hemingway', 'John Steinbeck', 'William Faulkner', 'A'),
('Who is the author of the book “The Shining”?', 'Stephen King', 'Dean Koontz', 'Stephen King', 'Clive Barker', 'A'),
('Which Indian author wrote “The Namesake”?', 'Arundhati Roy', 'Amitav Ghosh', 'Jhumpa Lahiri', 'Vikram Seth', 'C'),
('Who wrote “The Catcher in the Rye”?', 'William S. Burroughs', 'Truman Capote', 'J.D. Salinger', 'Kurt Vonnegut', 'C'),
('Which Indian author is known for his book “The 5 AM Club”?', 'Robin Sharma', 'Chetan Bhagat', 'Arvind Adiga', 'Amish Tripathi', 'A'),
('Who wrote “The Diary of a Young Girl”?', 'Anne Frank', 'Anne Frank', 'Maya Angelou', 'Virginia Woolf', 'A'),
('Markus Zusak is famous for which book?', 'The Perks of Being a Wallflower', 'The Book Thief', 'The Book Thief', 'The Fault in Our Stars', 'B'),
('Which author wrote the famous “Percy Jackson” series?', 'J.K. Rowling', 'Rick Riordan', 'Rick Riordan', 'Suzanne Collins', 'B');

select *from Books order by question_id;