create database Dream_Analysis_And_Tracking_system;
use Dream_Analysis_And_Tracking_system;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    sleep_pattern VARCHAR(50)
);
INSERT INTO Users (user_id, name, age, email, sleep_pattern) VALUES
(1, 'Alice', 28, 'alice@example.com', 'Regular'),
(2, 'Bob', 32, 'bob@example.com', 'Irregular'),
(3, 'Cathy', 25, 'cathy@example.com', 'Irregular'),
(4, 'David', 37, 'david@example.com', 'Regular'),
(5, 'Eve', 40, 'eve@example.com', 'Irregular'),
(6, 'Frank', 28, 'frank@example.com', 'Regular'),
(7, 'Grace', 37, 'grace@example.com', 'Regular'),
(8, 'Henry', 32, 'henry@example.com', 'Irregular'),
(9, 'Ivy', 25, 'ivy@example.com', 'Regular'),
(10, 'Jack', 40, 'jack@example.com', 'Regular'),
(11, 'Kathy', 28, 'kathy@example.com', 'Irregular'),
(12, 'Leo', 25, 'leo@example.com', 'Regular'),
(13, 'Mia', 40, 'mia@example.com', 'Irregular'),
(14, 'Noah', 37, 'noah@example.com', 'Regular'),
(15, 'Olivia', 32, 'olivia@example.com', 'Irregular'),
(16, 'Paul', 25, 'paul@example.com', 'Regular'),
(17, 'Quinn', 37, 'quinn@example.com', 'Irregular'),
(18, 'Rachel', 40, 'rachel@example.com', 'Regular'),
(19, 'Sam', 28, 'sam@example.com', 'Irregular'),
(20, 'Tina', 32, 'tina@example.com', 'Regular');
select * from Users;
CREATE TABLE Dream_Categories (
    category_id INT PRIMARY KEY, 
    category_name VARCHAR(50),
    category_description TEXT
);
INSERT INTO Dream_Categories (category_id, category_name, category_description) VALUES
(1, 'Animals - Wild', 'Dreams involving wild animals like lions, tigers, or bears'),
(2, 'Animals - Pets', 'Dreams involving pets such as dogs, cats, or birds'),
(3, 'Nature', 'Dreams about landscapes like forests, mountains, or the sea'),
(4, 'Money', 'Dreams involving wealth, finances, or transactions'),
(5, 'Water', 'Dreams involving oceans, rivers, storms, or rain'),
(6, 'Flower', 'Dreams about flowers representing emotions or beauty'),
(7, 'Fire', 'Dreams involving fire symbolizing passion, anger, or transformation'),
(8, 'Flying', 'Dreams where the dreamer is flying, symbolizing freedom or escape'),
(9, 'Death', 'Dreams about death representing endings or transformation'),
(10, 'Love and Relationships', 'Dreams focusing on love, friendships, or relationships'),
(11, 'Falling', 'Dreams where the dreamer is falling, symbolizing fear or insecurity'),
(12, 'Chasing', 'Dreams about being chased, representing stress or avoidance'),
(13, 'Travel', 'Dreams about journeys, trips, or exploring new places'),
(14, 'Buildings', 'Dreams involving structures such as houses, offices, or castles'),
(15, 'Time Travel', 'Dreams about traveling to the past or future'),
(16, 'Childhood Memories', 'Dreams revisiting events or places from childhood'),
(17, 'Outer Space', 'Dreams about planets, stars, or interstellar adventures'),
(18, 'Colors', 'Dreams focusing on specific colors or vibrant visuals'),
(19, 'Food', 'Dreams involving meals, cooking, or eating'),
(20, 'Nightmares', 'Intensely unpleasant dreams causing fear or distress');
select * from Dream_Categories;
CREATE TABLE Dream_Logs (
    log_id INT PRIMARY KEY, 
    user_id INT, 
    category_id INT, 
    mood VARCHAR(50),
    dream_description TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES Dream_Categories(category_id)
);
INSERT INTO Dream_Logs (log_id, user_id, category_id, mood, dream_description) VALUES
(1, 1, 1, 'Fearful', 'Being chased by a tiger in a jungle'),
(2, 2, 2, 'Happy', 'Playing fetch with my dog in a park'),
(3, 3, 3, 'Calm', 'Walking through a serene forest'),
(4, 4, 4, 'Anxious', 'Losing my wallet in a crowded market'),
(5, 5, 5, 'Peaceful', 'Swimming in a calm blue ocean'),
(6, 6, 6, 'Romantic', 'Smelling roses in a beautiful garden'),
(7, 7, 7, 'Passionate', 'Watching a wildfire spread across the hills'),
(8, 8, 8, 'Excited', 'Flying over a cityscape and feeling free'),
(9, 9, 9, 'Sad', 'Attending a funeral of someone unknown'),
(10, 10, 10, 'Loving', 'Holding hands with someone special in a sunset'),
(11, 1, 11, 'Terrified', 'Falling endlessly into a dark pit'),
(12, 2, 12, 'Panicked', 'Being chased by a stranger in a maze'),
(13, 3, 13, 'Adventurous', 'Traveling to a new country and meeting new people'),
(14, 4, 14, 'Curious', 'Exploring an ancient castle filled with treasures'),
(15, 5, 15, 'Confused', 'Jumping back and forth between the past and future'),
(16, 6, 16, 'Nostalgic', 'Reliving my childhood days at my grandparents’ house'),
(17, 7, 17, 'Amazed', 'Walking on the surface of the moon'),
(18, 8, 18, 'Vibrant', 'Surrounded by glowing blue and green lights in a dream'),
(19, 9, 19, 'Hungry', 'Cooking a large feast for family and friends'),
(20, 10, 20, 'Terrified', 'Running away from a horrifying shadow creature in a nightmare');
select * from Dream_Logs;
CREATE TABLE Psychological_Insights (
    insight_id INT PRIMARY KEY, 
    category_id INT, 
    mood VARCHAR(50),
    possible_meaning TEXT,
    insight_description TEXT,
    FOREIGN KEY (category_id) REFERENCES Dream_Categories(category_id)
);
INSERT INTO Psychological_Insights (insight_id, category_id, mood, possible_meaning, insight_description) VALUES
(1, 1, 'Fearful', 'Unresolved trauma or anxiety', 'The dream reflects the individual’s fear of an unresolved issue or a past trauma.'),
(2, 2, 'Excited', 'Positive outlook on life', 'Lucid dreams indicate an open, positive mindset and a desire to control one’s own experiences.'),
(3, 3, 'Confused', 'Lack of clarity or direction in life', 'Recurring dreams often reflect unresolved issues or a feeling of being stuck in daily life.'),
(4, 4, 'Joyful', 'Strong imagination or desire for escape', 'Fantasy dreams often point to a vivid imagination or a need to escape from reality.'),
(5, 5, 'Calm', 'Healing and emotional recovery', 'Healing dreams reflect a subconscious process of overcoming stress and achieving inner peace.'),
(6, 6, 'Amazed', 'Desire for freedom or control', 'Flying dreams indicate a need for freedom or the ability to overcome obstacles in life.'),
(7, 7, 'Nervous', 'Fear of failure or losing control', 'Falling dreams suggest a fear of losing control or a feeling of insecurity in waking life.'),
(8, 8, 'Stressed', 'Feeling trapped or pursued by responsibilities', 'Chase dreams symbolize a fear of being overwhelmed or pursued by responsibilities or emotions.'),
(9, 9, 'Anxious', 'Fear of loss or powerlessness', 'Teeth dreams indicate anxieties about aging, self-image, or fear of losing something important.'),
(10, 10, 'Embarrassed', 'Fear of judgment or vulnerability', 'Naked dreams represent feelings of vulnerability, fear of judgment, or anxiety about being exposed.'),
(11, 11, 'Panicked', 'Fear of failure or inadequacy', 'Test dreams reflect anxiety over performance, failure, or fear of not being prepared for challenges.'),
(12, 12, 'Sad', 'Grief or unresolved feelings', 'Death dreams may symbolize an emotional transformation, or feelings of loss and grief.'),
(13, 13, 'Excited', 'New beginnings or changes', 'Pregnancy dreams reflect anticipation of change, growth, or a new phase in life.'),
(14, 14, 'Curious', 'Seeking wisdom or guidance', 'Animal dreams often represent a need for guidance, with each animal carrying specific symbolic meanings.'),
(15, 15, 'Content', 'Connection with nature or self', 'Nature dreams point to a desire for peace, harmony, and connection with the natural world.'),
(16, 16, 'Intrigued', 'Curiosity about life and future', 'Time travel dreams reflect a fascination with the past or future, often linked to a desire for exploration.'),
(17, 17, 'Starstruck', 'Desire for recognition or admiration', 'Celebrity dreams point to a desire for validation, admiration, or the aspiration to achieve success.'),
(18, 18, 'Terrified', 'Fear of change or the unknown', 'Apocalyptic dreams often reflect anxieties about major life changes or global concerns.'),
(19, 19, 'Stressed', 'Pressure to perform or meet expectations', 'Workplace dreams reflect the stress of balancing tasks, deadlines, or a sense of being overworked.'),
(20, 20, 'Nostalgic', 'Desire to reconnect with the past or lost innocence', 'Childhood dreams often symbolize a longing for simpler times or a need to reconnect with a past sense of security.');
select * from Psychological_Insights;
CREATE TABLE Dream_Advice (
    advice_id INT PRIMARY KEY, 
    category_id INT, 
    advice_title VARCHAR(100),
    advice_description TEXT,
    FOREIGN KEY (category_id) REFERENCES Dream_Categories(category_id)
);
INSERT INTO Dream_Advice (advice_id, category_id, advice_title, advice_description) VALUES
(1, 1, 'Address Your Fears', 'Identify sources of fear in waking life and confront them directly to reduce anxiety and stress.'),
(2, 2, 'Explore Creativity', 'Use lucid dreaming as an opportunity to explore your creativity and overcome mental blocks.'),
(3, 3, 'Break the Cycle', 'Focus on solving the underlying issues that are causing recurring dreams, such as unresolved emotions or stress.'),
(4, 4, 'Embrace Fantasy', 'Channel the creativity from your fantasy dreams into artistic expression or writing to relieve stress.'),
(5, 5, 'Seek Balance', 'Practice relaxation techniques such as meditation or deep breathing to foster inner peace and healing.'),
(6, 6, 'Overcome Anxiety', 'Take steps to confront the root causes of anxiety in your waking life to reduce fear-based dreams.'),
(7, 7, 'Stay Grounded', 'Focus on building stability in your life by creating structure and addressing feelings of insecurity.'),
(8, 8, 'Take Control', 'Address any unresolved issues in your waking life, and take steps to resolve them to prevent feeling overwhelmed.'),
(9, 9, 'Boost Confidence', 'Focus on building self-esteem and addressing fears related to appearance, aging, or change.'),
(10, 10, 'Embrace Vulnerability', 'Accept your flaws and understand that vulnerability is part of personal growth and connection with others.'),
(11, 11, 'Prepare for Challenges', 'Plan ahead and reduce stress by preparing for upcoming challenges, while addressing feelings of inadequacy.'),
(12, 12, 'Let Go of the Past', 'Reflect on unresolved grief and focus on healing to better cope with feelings of loss.'),
(13, 13, 'Embrace Change', 'Accept and embrace new changes in your life, and be open to new beginnings that come with growth.'),
(14, 14, 'Seek Guidance', 'Explore your intuition and seek advice from others or trusted sources to help guide your decision-making.'),
(15, 15, 'Reconnect with Nature', 'Spend more time outdoors to reconnect with nature and restore your inner peace and harmony.'),
(16, 16, 'Embrace the Unknown', 'Use time travel dreams as an opportunity to reflect on past lessons and anticipate future growth or opportunities.'),
(17, 17, 'Pursue Your Dreams', 'Take actionable steps toward your personal goals and dreams, and seek validation through your own achievements.'),
(18, 18, 'Prepare for Change', 'Focus on adapting to changes in life, whether personal or societal, and build resilience in the face of uncertainty.'),
(19, 19, 'Manage Stress', 'Take regular breaks, practice self-care, and set clear boundaries to manage work-related stress.'),
(20, 20, 'Revisit Your Roots', 'Reconnect with past experiences, and explore ways to bring the wisdom of your childhood into your current life.');
select * from Dream_Advice;

SELECT name, email FROM Users WHERE sleep_pattern = 'Irregular';

 SELECT mood, COUNT(*) AS mood_count 
   FROM Dream_Logs 
   GROUP BY mood 
   ORDER BY mood_count DESC 
   LIMIT 1;
   
 SELECT category_id, category_name, category_description 
   FROM Dream_Categories;
   
 SELECT d.dream_description 
   FROM Dream_Logs d 
   WHERE d.user_id = 5;


 SELECT possible_meaning, insight_description 
   FROM Psychological_Insights 
   WHERE mood = 'Fearful';
   
SELECT sleep_pattern, COUNT(*) AS user_count 
   FROM Users 
   GROUP BY sleep_pattern;
   
SELECT u.name, u.email 
   FROM Users u 
   JOIN Dream_Logs dl ON u.user_id = dl.user_id 
   WHERE dl.category_id = 6;
   
 SELECT advice_title, advice_description 
   FROM Dream_Advice 
   WHERE category_id = 3;
   
SELECT DISTINCT c.category_name 
   FROM Dream_Categories c 
   JOIN Dream_Logs d ON c.category_id = d.category_id 
   WHERE d.mood IN ('Joyful', 'Excited');
   
SELECT u.name, COUNT(dl.log_id) AS total_dreams 
   FROM Users u 
   JOIN Dream_Logs dl ON u.user_id = dl.user_id 
   GROUP BY u.name 
   ORDER BY total_dreams DESC;
   
CREATE VIEW user_dream_insights AS
SELECT
    u.user_id,
    u.name,
    u.age,
    u.email,
    u.sleep_pattern,
    dl.dream_description,
    dl.mood AS dream_mood,
    dc.category_name AS dream_category,
    pi.possible_meaning AS insight_meaning,
    pi.insight_description AS insight_detail,
    da.advice_title AS advice_title,
    da.advice_description AS advice_description
FROM
    Users u
JOIN
    Dream_Logs dl ON u.user_id = dl.user_id
JOIN
    Dream_Categories dc ON dl.category_id = dc.category_id
LEFT JOIN
    Psychological_Insights pi ON dc.category_id = pi.category_id AND dl.mood = pi.mood
LEFT JOIN
    Dream_Advice da ON dc.category_id = da.category_id
ORDER BY
    u.name, dl.log_id;
    
SELECT * FROM user_dream_insights;

DELIMITER $$

CREATE PROCEDURE GetIrregularSleepUsers()
BEGIN
    -- Retrieve names and emails of users with irregular sleep patterns
    SELECT name, email
    FROM Users
    WHERE sleep_pattern = 'Irregular';
END $$

DELIMITER ;

CALL GetIrregularSleepUsers();
