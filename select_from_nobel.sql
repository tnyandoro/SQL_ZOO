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

---Recent Peace Prizes
SELECT name, subject
FROM nobel
WHERE yr >= 2000

---Recent Peace Prizes
SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

---Literature in the 1980's
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989; 

---Only Presidents
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama'
)

---Show the winners with first name John
SELECT winner
FROM nobel
WHERE winner LIKE 'john %';

---Chemistry and Physics from different years
SELECT yr, subject, winner 
  FROM nobel
WHERE yr = 1980 AND subject = 'physics' 
  OR yr = 1984 AND subject = 'chemistry' ;

---Exclude Chemists and Medics
SELECT yr, subject, winner 
  FROM nobel
WHERE yr= 1980 
  AND subject NOT IN('Chemistry', 'Medicine');  

 ---Early Medicine, Late Literature
 SELECT *
  FROM nobel
WHERE subject = 'Medicine' AND yr < 1910
  OR subject = 'Literature' AND yr >= 2004; 

 ---Harder Questions

 SELECT *
  FROM nobel
WHERE winner = 'PETER GRÜNBERG'; 

---Apostrophe
SELECT *
  FROM nobel
WHERE winner = 'EUGENE O''NEILL'; 


---Knights of the realm
SELECT winner, yr, subject
  FROM nobel
WHERE winner LIKE 'Sir%' 
 ORDER BY yr desc,  winner ASC; 

---Chemistry and Physics last
 SELECT winner, subject 
  FROM nobel
 WHERE yr = 1984
 ORDER BY subject IN ('Physics', 'Chemistry'), subject, winner ;