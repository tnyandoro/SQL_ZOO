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