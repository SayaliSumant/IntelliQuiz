CREATE TABLE Football (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);

INSERT INTO Football (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which country won the 2018 FIFA World Cup?', 'Argentina', 'France', 'Brazil', 'Germany', 'B'),
('Who is the all-time top scorer in FIFA World Cup history?', 'Pele', 'Miroslav Klose', 'Ronaldo Nazário', 'Thierry Henry', 'B'),
('Which football club is known as “The Red Devils”?', 'Arsenal', 'Chelsea', 'Manchester United', 'Liverpool', 'C'),
('Who won the Ballon d''Or in 2020?', 'Lionel Messi', 'Cristiano Ronaldo', 'Lionel Messi', 'Robert Lewandowski', 'C'),
('Which football player is known as “CR7”?', 'Cristiano Ronaldo', 'Lionel Messi', 'Kylian Mbappé', 'Neymar', 'A'),
('Who is the coach of FC Barcelona (as of 2023)?', 'Jose Mourinho', 'Xavi Hernandez', 'Pep Guardiola', 'Ronald Koeman', 'B'),
('Which country is known for producing world-class footballers like Zinedine Zidane and Thierry Henry?', 'France', 'Spain', 'Italy', 'Brazil', 'A'),
('Which football club is Lionel Messi associated with?', 'Real Madrid', 'Juventus', 'Barcelona', 'Paris Saint-Germain', 'D'),
('Who is known as the "Egyptian King" in football?', 'Sadio Mane', 'Ahmed Hegazi', 'Trezeguet', 'Mohamed Salah', 'D'),
('What is the maximum number of players allowed on the field for one team in a standard football match?', '11', '12', '10', '9', 'A'),
('Who won the UEFA Champions League in the 2020-2021 season?', 'Paris Saint-Germain', 'Barcelona', 'Chelsea', 'Manchester City', 'C'),
('Which country won the Copa América 2021?', 'Brazil', 'Argentina', 'Colombia', 'Uruguay', 'B'),
('Who is the current captain of the Indian football team (as of 2023)?', 'Vishal Kaith', 'Sandesh Jhingan', 'Sunil Chhetri', 'Gurpreet Singh Sandhu', 'C'),
('Who is the all-time top scorer in the English Premier League?', 'Thierry Henry', 'Wayne Rooney', 'Harry Kane', 'Alan Shearer', 'D'),
('Which footballer is known for the famous "Rabona" kick?', 'David Beckham', 'Ricardo Quaresma', 'Cristiano Ronaldo', 'Lionel Messi', 'B'),
('Which Brazilian football legend is known as "O Fenômeno" (The Phenomenon)?', 'Ronaldo Nazário', 'Ronaldinho', 'Rivaldo', 'Cafu', 'A'),
('Which country has won the most FIFA World Cups?', 'Brazil', 'Germany', 'Italy', 'Argentina', 'A'),
('Who holds the record for the most goals in a single calendar year?', 'Cristiano Ronaldo', 'Lionel Messi', 'Robert Lewandowski', 'Neymar', 'B'),
('Which club did Zinedine Zidane play for before becoming a coach?', 'Juventus', 'AC Milan', 'Real Madrid', 'Barcelona', 'C'),
('What is the name of the football competition for national teams in South America?', 'Copa del Rey', 'CONCACAF Gold Cup', 'Copa América', 'Africa Cup of Nations', 'C'),
('Who won the Golden Boot at the 2022 FIFA World Cup?', 'Lionel Messi', 'Harry Kane', 'Kylian Mbappé', 'Neymar', 'C'),
('Which football club is known as “The Blues”?', 'Chelsea', 'Everton', 'Liverpool', 'Manchester City', 'A'),
('Which country hosted the 2022 FIFA World Cup?', 'Russia', 'Qatar', 'Brazil', 'France', 'B'),
('Which footballer is known as "The Egyptian King" and plays for Liverpool?', 'Mohamed Salah', 'Sadio Mane', 'Ahmed Hegazi', 'Virgil van Dijk', 'A'),
('Which team won the 2010 FIFA World Cup?', 'Brazil', 'Spain', 'Italy', 'Netherlands', 'B');


CREATE TABLE Basketball (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Basketball (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who is known as the “Greatest Basketball Player of All Time”?', 'Shaquille O''Neal', 'Kobe Bryant', 'Michael Jordan', 'LeBron James', 'C'),
('Which team did Michael Jordan play for during most of his career?', 'Chicago Bulls', 'Los Angeles Lakers', 'Boston Celtics', 'Miami Heat', 'A'),
('Who won the NBA MVP Award in 2021?', 'Kevin Durant', 'James Harden', 'Nikola Jokić', 'Stephen Curry', 'C'),
('Which team won the NBA Championship in 2020?', 'Chicago Bulls', 'Los Angeles Lakers', 'Miami Heat', 'Toronto Raptors', 'B'),
('Which player is known for his famous “Skyhook” shot?', 'Kareem Abdul-Jabbar', 'Wilt Chamberlain', 'Shaquille O''Neal', 'Tim Duncan', 'A'),
('What is the standard height of an NBA basketball hoop from the floor?', '9 feet', '10 feet', '11 feet', '12 feet', 'B'),
('Which city is home to the NBA team the Boston Celtics?', 'New York', 'Los Angeles', 'Boston', 'Chicago', 'C'),
('Which NBA player is known as “King James”?', 'LeBron James', 'Kobe Bryant', 'Michael Jordan', 'Kevin Durant', 'A'),
('Who is the all-time leading scorer in the NBA (as of 2023)?', 'Kobe Bryant', 'Wilt Chamberlain', 'Kareem Abdul-Jabbar', 'LeBron James', 'D'),
('Which NBA player is known for his “Black Mamba” nickname?', 'Kobe Bryant', 'Shaquille O''Neal', 'Tim Duncan', 'Michael Jordan', 'A'),
('In basketball, how many points is a three-pointer worth?', '1 point', '2 points', '3 points', '4 points', 'C'),
('Which team did LeBron James play for before joining the Los Angeles Lakers?', 'Toronto Raptors', 'Miami Heat', 'Cleveland Cavaliers', 'Chicago Bulls', 'C'),
('Who won the NBA Rookie of the Year in 2021?', 'Zion Williamson', 'Ja Morant', 'LaMelo Ball', 'Anthony Edwards', 'C'),
('Which player is known for his “Unstoppable Fadeaway Jump Shot”?', 'Kobe Bryant', 'Tim Duncan', 'Michael Jordan', 'Dirk Nowitzki', 'C'),
('Which NBA legend was known as “The Big Fundamental”?', 'Tim Duncan', 'Shaquille O''Neal', 'Magic Johnson', 'Kareem Abdul-Jabbar', 'A'),
('Which team won the NBA Finals in 2016, after coming back from a 3-1 deficit?', 'Miami Heat', 'San Antonio Spurs', 'Cleveland Cavaliers', 'Golden State Warriors', 'C'),
('What is the name of the NBA''s annual all-star game that features the best players?', 'NBA Showcase', 'NBA Jam', 'NBA All-Star Game', 'NBA Summer League', 'C'),
('Which NBA player is known for his “Block Party” and defensive prowess?', 'LeBron James', 'Kevin Durant', 'Dennis Rodman', 'Rudy Gobert', 'D'),
('What is the maximum number of players allowed on an NBA roster?', '12', '15', '18', '10', 'B'),
('Who holds the record for the most points scored in a single NBA game?', 'Michael Jordan', 'Wilt Chamberlain', 'Kobe Bryant', 'Shaquille O''Neal', 'B'),
('Which NBA player is known for his “Thunder Dunk” and athleticism?', 'LeBron James', 'Shaquille O''Neal', 'Vince Carter', 'Dwyane Wade', 'C'),
('What is the name of the NBA Finals MVP trophy?', 'The Michael Jordan Trophy', 'The Larry O''Brien Trophy', 'The Bill Russell Trophy', 'The Magic Johnson Trophy', 'B'),
('Who holds the record for the most career assists in the NBA?', 'Wilt Chamberlain', 'John Stockton', 'Magic Johnson', 'Chris Paul', 'B'),
('Who was the first player to score 100 points in an NBA game?', 'John Stockson', 'Michael Jordan', 'Wilt Chamberlain', 'Kobe Bryant', 'C'),
('In which year did the NBA officially expand to 30 teams?', '1995', '2000', '2004', '2010', 'C');


CREATE TABLE Cricket (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Cricket (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who holds the record for the most runs in a single ICC Cricket World Cup?', 'Virat Kohli', 'Ricky Ponting', 'Sachin Tendulkar', 'Brian Lara', 'C'),
('Who is the all-time leading wicket-taker in One Day Internationals (ODIs)?', 'Shane Warne', 'Muttiah Muralitharan', 'Wasim Akram', 'Glenn McGrath', 'B'),
('Which country won the ICC Cricket World Cup 2019?', 'Australia', 'New Zealand', 'England', 'India', 'C'),
('Who is known as the "Master Blaster" in cricket?', 'Sachin Tendulkar', 'Ricky Ponting', 'Brian Lara', 'Virat Kohli', 'A'),
('Which cricketer holds the record for the most runs in T20 Internationals?', 'Virat Kohli', 'Mohammad Rizwan', 'Chris Gayle', 'Shane Watson', 'A'),
('Who is the only cricketer to have scored a triple century in Test cricket?', 'Rahul Dravid', 'Ricky Ponting', 'Brian Lara', 'Mark Taylor', 'C'),
('Which country is the host for the 2023 ICC Cricket World Cup?', 'India', 'Australia', 'England', 'South Africa', 'A'),
('Who is known for the famous "Dilscoop" shot in cricket?', 'AB de Villiers', 'Virat Kohli', 'MS Dhoni', 'Shahid Afridi', 'A'),
('What is the name of the award given to the best player in the ICC Men''s Cricket World Cup Final?', 'Player of the Year', 'Player of the Match', 'Best Bowler', 'Best All-rounder', 'B'),
('Who holds the record for the fastest century in ODIs?', 'Brian Lara', 'Virat Kohli', 'AB de Villiers', 'Shahid Afridi', 'C'),
('Which Indian cricketer was known as the “Wall” of Indian cricket?', 'MS Dhoni', 'Sunil Gavaskar', 'Rahul Dravid', 'Sachin Tendulkar', 'C'),
('Which bowler holds the record for the most wickets in an ICC World Cup?', 'Muttiah Muralitharan', 'Shane Warne', 'Wasim Akram', 'Glenn McGrath', 'D'),
('Who is the youngest cricketer to score a double century in an ODI match?', 'Shubman Gill', 'Sachin Tendulkar', 'Virat Kohli', 'Ricky Ponting', 'A'),
('What is the maximum number of overs in a T20 match?', '10', '15', '5', '20', 'D'),
('Who is the first Indian cricketer to score a century in all formats of the game?', 'Virat Kohli', 'Rohit Sharma', 'Shikhar Dhawan', 'Suresh Raina', 'A'),
('Who is the only cricketer to have scored over 200 runs in an ODI twice?', 'Sachin Tendulkar', 'Martin Guptill', 'Virat Kohli', 'Rohit Sharma', 'D'),
('Which country won the first-ever ICC T20 World Cup in 2007?', 'Sri Lanka', 'India', 'Pakistan', 'Australia', 'B'),
('What is the name of the India-Pakistan cricket rivalry?', 'The Subcontinent Derby', 'The Mother of All Rivalries', 'The Border Series', 'The Clash of Titans', 'B'),
('Who is the leading wicket-taker in Test cricket as of 2023?', 'Shane Warne', 'Muttiah Muralitharan', 'James Anderson', 'Anil Kumble', 'C'),
('Who was the first cricketer to take 10 wickets in a single Test match?', 'Anil Kumble', 'Jim Laker', 'Richard Hadlee', 'Shane Warne', 'B'),
('Which Indian cricketer is known for his “Helicopter Shot”?', 'Virat Kohli', 'MS Dhoni', 'Rohit Sharma', 'Shikhar Dhawan', 'B'),
('Which player holds the record for the most runs in a single IPL season?', 'Virat Kohli', 'Chris Gayle', 'David Warner', 'Shikhar Dhawan', 'A'),
('Who was the first Indian captain to lead India to an ICC World Cup victory?', 'Kapil Dev', 'MS Dhoni', 'Sourav Ganguly', 'Virat Kohli', 'A'),
('Which cricketer holds the record for the most sixes in international cricket?', 'Shahid Afridi', 'Chris Gayle', 'MS Dhoni', 'Ricky Ponting', 'B'),
('Who is the only cricketer to score over 50 centuries in international cricket?', 'Ricky Ponting', 'Brian Lara', 'Sachin Tendulkar', 'Virat Kohli', 'C');



CREATE TABLE Fitness (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Fitness (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which of the following is a benefit of regular physical exercise?', 'Increased fatigue', 'Decreased muscle strength', 'Improved cardiovascular health', 'Decreased immune system function', 'C'),
('Which of these is an example of aerobic exercise?', 'Weightlifting', 'Running', 'Sprinting', 'Yoga', 'B'),
('What does BMI stand for in relation to health?', 'Body Mass Indicator', 'Body Measurement Index', 'Body Mass Index', 'Body Movement Indicator', 'C'),
('How many minutes of moderate-intensity exercise is recommended for adults per week?', '50 minutes', '150 minutes', '200 minutes', '250 minutes', 'B'),
('What is yoga primarily focused on?', 'Muscle strength', 'Flexibility and mindfulness', 'Speed and endurance', 'Cardiovascular health', 'B'),
('What is the main benefit of strength training exercises?', 'Improves flexibility', 'Enhances aerobic capacity', 'Builds muscle mass', 'Increases cardiovascular endurance', 'C'),
('Which of these activities is an example of strength training?', 'Weightlifting', 'Running', 'Swimming', 'Cycling', 'A'),
('Which nutrient is most important for muscle repair and growth?', 'Carbohydrates', 'Protein', 'Fats', 'Vitamins', 'B'),
('What is the recommended daily water intake for an average adult?', '1-2 cups', '3-4 cups', '8-10 cups', '15-20 cups', 'C'),
('Which of the following is a benefit of cardiovascular exercise?', 'Decreased heart rate', 'Improved lung capacity', 'Increased muscle mass', 'Decreased bone density', 'B'),
('What does HIIT stand for in fitness?', 'High-Impact Interval Training', 'High-Intensity Interval Training', 'High-Intensity Internal Training', 'High-Impact Integrated Training', 'B'),
('Which type of exercise is best for improving flexibility?', 'Strength training', 'Stretching', 'Running', 'Cycling', 'B'),
('What is the recommended sleep duration for adults to maintain optimal health?', '4-5 hours', '7-9 hours', '10-12 hours', '6-7 hours', 'B'),
('What is the primary purpose of aerobic exercises?', 'To improve muscular strength', 'To reduce body weight', 'To improve endurance and cardiovascular health', 'To increase flexibility', 'C'),
('What does mental wellness include?', 'Lack of stress', 'Physical well-being only', 'Emotional balance and stress management', 'Only sleeping well', 'C'),
('What is Pilates focused on?', 'Cardio endurance', 'Core strength, posture, and flexibility', 'Muscle building', 'Weight loss', 'B'),
('Which of the following is NOT a type of stretching exercise?', 'Static stretching', 'Dynamic stretching', 'Flexibility training', 'Ballistic stretching', 'C'),
('Which is the best time of day to exercise for most people?', 'Early morning', 'Late evening', 'When it fits into your schedule', 'Midday', 'C'),
('What is the most common cause of muscle cramps during exercise?', 'Lack of rest', 'Overhydration', 'Dehydration and electrolyte imbalance', 'Overeating', 'C'),
('Which of the following exercises helps improve core strength?', 'Squats', 'Planks', 'Deadlifts', 'Lunges', 'B'),
('What is mindful eating associated with?', 'Focusing only on calories', 'Eating slowly and paying attention to hunger signals', 'Skipping meals for weight loss', 'Fasting', 'B'),
('Which of these activities helps with stress management?', 'Running', 'Meditation and deep breathing', 'Weightlifting', 'Cycling', 'B'),
('What is the primary function of vitamins in the body?', 'Muscle building', 'Supporting metabolic processes', 'Providing energy', 'Repairing tissues', 'B'),
('What does the "cool-down" phase after exercise help with?', 'Building muscle', 'Increasing endurance', 'Reducing muscle soreness and preventing injury', 'Increasing heart rate', 'C'),
('What is the term for the amount of physical activity required to achieve health benefits?', 'Overtraining', 'Moderate-intensity activity', 'Rest day', 'Intense workout', 'B');




CREATE TABLE Olympic (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Olympic (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Where were the first modern Olympic Games held in 1896?', 'Athens, Greece', 'Paris, France', 'London, United Kingdom', 'Rome, Italy', 'A'),
('Who was the first Indian athlete to win an Olympic gold medal?', 'Milkha Singh', 'P.T. Usha', 'Abhinav Bindra', 'Neeraj Chopra', 'C'),
('Which country has won the most Olympic gold medals in history?', 'China', 'United States', 'Russia', 'Germany', 'B'),
('In which year did the Olympic Games first include women''s events?', '1900', '1924', '1912', '1936', 'A'),
('Who holds the record for the most gold medals in a single Olympic Games by an athlete?', 'Michael Phelps', 'Usain Bolt', 'Mark Spitz', 'Simone Biles', 'A'),
('Which city hosted the 2020 Summer Olympics?', 'Tokyo, Japan', 'London, United Kingdom', 'Beijing, China', 'Tokyo, Japan', 'A'),
('Which country has hosted the most Olympic Games?', 'France', 'Germany', 'United States', 'Japan', 'C'),
('What is the name of the symbol of the Olympic Games?', 'Olympic Flame', 'Olympic Star', 'Olympic Rings', 'Olympic Torch', 'C'),
('Who was the first African-American to win an Olympic gold medal?', 'Carl Lewis', 'DeHart Hubbard', 'Jackie Robinson', 'Florence Griffith Joyner', 'B'),
('In which year did the Olympic Games first include winter sports?', '1924', '1912', '1932', '1960', 'A'),
('Which athlete is known as the "Fastest Man in the World" and has won multiple Olympic gold medals in the 100m and 200m?', 'Michael Phelps', 'Carl Lewis', 'Usain Bolt', 'Mo Farah', 'C'),
('Which Indian female athlete won an Olympic bronze medal in London 2012 in women''s boxing?', 'Saina Nehwal', 'P.V. Sindhu', 'Mary Kom', 'Sakshi Malik', 'C'),
('The Olympic motto is "Citius, Altius, Fortius." What does it mean?', 'Faster, Stronger, Smarter', 'Higher, Stronger, Faster', 'Faster, Higher, Stronger', 'Smarter, Faster, Higher', 'C'),
('In which Olympic Games did Michael Phelps win a record 8 gold medals in a single Olympics?', 'London 2012', 'Athens 2008', 'Beijing 2008', 'Sydney 2000', 'C'),
('Which country is the host country for the 2024 Summer Olympics?', 'France', 'Brazil', 'United States', 'Japan', 'A'),
('Who was the first woman to ever win an Olympic gold medal in athletics?', 'Babe Zaharias', 'Florence Griffith Joyner', 'Hélène de Pourtalès', 'P.V. Sindhu', 'C'),
('Which event was introduced in the Olympics in 1980?', 'Ice Hockey', 'Basketball', 'Handball', 'Volleyball', 'A'),
('The first Olympic Games were held in which year?', '776 BC', '1000 BC', '2000 BC', '500 BC', 'A'),
('Which of the following sports was dropped from the Olympic Games after 2008?', 'Baseball', 'Baseball/Softball', 'Tennis', 'Wrestling', 'B'),
('Who is the only athlete to have won gold medals in both the Winter and Summer Olympics?', 'Michael Phelps', 'Jim Thorpe', 'Eddie Eagan', 'Jackie Joyner-Kersee', 'C'),
('In which year did India win its first-ever Olympic medal in hockey?', '1924', '1920', '1928', '1932', 'C'),
('Which country won the first-ever Olympic football tournament in 1900?', 'Great Britain', 'France', 'Germany', 'United States', 'A'),
('Which city hosted the first Olympic Games of the 21st century?', 'Athens', 'London', 'Sydney', 'Beijing', 'C'),
('Who won the first Olympic gold medal for India in wrestling?', 'Sushil Kumar', 'Yogeshwar Dutt', 'K.D. Jadhav', 'Ravi Kumar Dahiya', 'C'),
('Which Olympic sport made its debut in the 2020 Olympics in Tokyo?', 'Surfing', 'Skateboarding', 'Baseball', 'Golf', 'A');