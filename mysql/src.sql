USE `MYSQL_DATABASE`;

-- Lab 3 - 1 - a - Skriv en query som visar vilken veckodag det kommer vara på den sista dagen nuvarande månad.
SELECT DAYNAME(LAST_DAY(NOW()));

-- Lab 3 - 1 - b - Skriv en query som visar vilken veckordag det kommer vara på den första dagen nästa månad.
SELECT DAYNAME(LAST_DAY(NOW())+INTERVAL 1 day);

-- Lab 3 - 2 - Skriv en query som visar hur många dagar det gått sen 2000-01-01.
SELECT DATEDIFF(NOW(), '2000-01-01');

-- Lab 3 - 3 - Skriv en query som visar hur många minuter det är kvar till midnatt.
SELECT timestampdiff(SECOND, timestamp(CURDATE()), timestamp(NOW()));

-- Lab 3 - 4 - Skriv en query som visar alla users som är födda i februari. (users.sql)
SELECT * FROM `users` WHERE MONTH(`birthdate`) = 2;

-- Lab 3 - 5 - Skriv en query som visar alla users som har födelsedag idag (om någon).
SELECT * FROM `users` WHERE DATE(NOW()) = DATE(`birthdate`)

