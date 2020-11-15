---Winners from 1950
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

 ---1962 Literature
SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

---Albert Einstein
SELECT winner
FROM nobel
WHERE yr = 1921
AND subject = 'Physics'

---Albert Einstein
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';
