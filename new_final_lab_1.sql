/* YouTube User Table*/
CREATE TABLE yt_user (
user_id INTEGER PRIMARY KEY, user_name VARCHAR(100) NOT NULL, gmail VARCHAR(100) NOT NULL);

CREATE TABLE channel (
ch_id INTEGER PRIMARY KEY,
ch_name VARCHAR(64) NOT NULL UNIQUE, ch_url VARCHAR(100),
ch_category VARCHAR(20),
user_id INTEGER REFERENCES yt_user(user_id));

CREATE TABLE subscription (
subscription_id INTEGER PRIMARY KEY,
ch_id INTEGER REFERENCES channel(ch_id), user_id INTEGER REFERENCES yt_user(user_id));

INSERT INTO yt_user (user_id, user_name, gmail) VALUES (100, 'Ali', 'ali@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (101, 'Banan', 'banan@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (102, 'Bayan', 'bayan@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (103, 'Moe', 'Moe@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (104, 'Amal', 'amal@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (105, 'lana', 'lana@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (106, 'Tab', 'Tab@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (107, 'Ezra', 'Ezra@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (108, 'Alya', 'Alya@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (109, 'Maryam', 'maryam@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (110, 'baraa', 'baraa@gmail.com');
INSERT INTO yt_user (user_id, user_name, gmail) VALUES (112, 'Alice', 'alice@gmail.com');

INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (200, 'Apple', 'https://www.youtube.com/channel/apple', 'Business', 100);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (201, 'Orange', 'https://www.youtube.com/channel/orange', 'Personal', 100);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (202, 'Computer', 'https://www.youtube.com/channel/computer', 'Business', 100);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (203, 'Life', 'https://www.youtube.com/channel/Life', 'Business', 101);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (204, 'Sport', 'https://www.youtube.com/channel/Sport', 'Business', 101);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (205, 'Class', 'https://www.youtube.com/channel/Class', 'Personal', 102);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (206, 'Games', 'https://www.youtube.com/channel/Games', 'Business', 103);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (207, 'Kids', 'https://www.youtube.com/channel/Kids', 'Personal', 103);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (208, 'Dress', 'https://www.youtube.com/channel/Dress', 'Personal', 103);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (209, 'Books', 'https://www.youtube.com/channel/Books', 'Personal', 104);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (210, 'Electronics', 'https://www.youtube.com/channel/Electronics', 'Personal', 105);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (211, 'Cars', 'https://www.youtube.com/channel/Cars', 'Business', 106);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (220, 'Fashion', 'https://www.youtube.com/channel/fashion', 'Business', 112);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (221, 'Technology', 'https://www.youtube.com/channel/technology', 'Business', 112);
INSERT INTO channel (ch_id, ch_name, ch_url, ch_category, user_id) VALUES (223, 'Art', 'https://www.youtube.com/channel/art', 'Personal', 112);


INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (300,201,100); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (301,202,100); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (302,200,101); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (303,202,101); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (304,200,102); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (305,200,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (306,201,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (307,202,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (308,203,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (309,204,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (310,205,104); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (311,206,104); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (312,207,105);
INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (313,208,105); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (314,209,106); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (315,210,107); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (316,211,107); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (317,220,108); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (318,221,109); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (319,221,100); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (320,221,101); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (321,221,102); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (322,221,103); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (324,200,110); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (325,200,107); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (326,201,106); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (327,209,107); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (328,209,108); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (329,205,105); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (330,205,106); INSERT INTO subscription (subscription_id, ch_id, user_id) VALUES (331,205,107);


SELECT ch_name, ch_ID
FROM channel
WHERE ch_category <> 'Business';

SELECT user_name, ch_name
FROM channel c, yt_user y
WHERE c.user_id=y.user_id
AND ch_category = 'Personal'
Order by ch_name;


SELECT y.user_id, user_name, ch_name
FROM yt_user y, channel c

WHERE ch_category = 'Personal'
AND user_name='Alice'
AND y.user_id=c.user_id;


SELECT ch_name, count(subscription_id) AS number_of_subscription
FROM subscription s, channel ch
WHERE s.ch_id = ch.ch_id
GROUP BY ch_name
ORDER BY ch_name;



SELECT ch.ch_name, COUNT(subscription_id) AS number_of_subscription
FROM channel ch
LEFT join subscription on ch.ch_id = subscription.ch_id
Group BY ch.ch_name
ORDER BY ch.ch_name;


SELECT ch_name,user_name,count(s.user_id) as Number_of_Subscriptions
FROM yt_user y
INNER JOIN channel ch on ch.user_id = y.user_id
LEFT JOIN subscription s on s.ch_id=ch.ch_id
GROUP BY ch_name,user_name
ORDER BY ch_name;



    SELECT sum(number_of_subscriptions) AS total_number_of_subscriptions
    FROM(SELECT ch_name, count(subscription_id) AS number_of_subscriptions
    FROM subscription s, channel ch
    WHERE s.ch_id=ch.ch_id
    GROUP BY ch_name);