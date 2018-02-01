USE `MYSQL_DATABASE`;

-- Lab 3 - 1 - a - Skriv en query som visar vilken veckodag det kommer vara på den sista dagen nuvarande månad.

(SELECT DAYNAME(LAST_DAY(NOW())))

-- Lab 3 - 1 - b - Skriv en query som visar vilken veckordag det kommer vara på den första dagen nästa månad.

(SELECT DAYNAME(LAST_DAY(NOW())+INTERVAL 1 day))