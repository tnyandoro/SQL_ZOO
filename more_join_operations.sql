---List the films where the yr is 1962 [Show id, title]
SELECT id, title
 FROM movie
 WHERE yr=1962

 ---Give year of 'Citizen Kane'.
 SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

---List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
order by yr;

---id for actor Glenn Close
SELECT id
FROM actor
WHERE name = 'Glenn Close'

---id for Casablanca
SELECT id
FROM movie
WHERE title = 'Casablanca'

---Cast list for Casablanca
SELECT id
FROM movie
WHERE title = 'Casablanca'

---Obtain the cast list for 'Casablanca'.
SELECT name 
FROM actor 
JOIN casting ON id = actorid 
WHERE movieid = 11768;

---Obtain the cast list for the film 'Alien'
SELECT  actor.name
FROM  actor
JOIN  casting ON actor.id = casting.actorid
JOIN  movie ON movie.id = casting.movieid
WHERE  movie.title = 'Alien';

---List the films in which 'Harrison Ford' has appeared
SELECT title FROM movie
WHERE id IN (
SELECT movieid FROM casting
JOIN actor ON actorid = id
WHERE name = 'Harrison Ford')

---Harrison Ford as a supporting actor
SELECT title FROM movie 
WHERE id IN (
SELECT movieid FROM casting JOIN 
actor on actorid = id WHERE ord != 1
AND name = 'Harrison Ford');

---Lead actors in 1962 movies
SELECT  movie.title, actor.name
FROM  actor
JOIN  casting ON actor.id = casting.actorid
JOIN  movie ON movie.id = casting.movieid
WHERE  casting.ord = 1 AND movie.yr = 1962;

---Busy years for Rock Hudson
SELECT title,name FROM movie m
JOIN casting c on m.id = c.movieid
JOIN actor a on c.actorid = a.id
WHERE movieid in (SELECT movieid FROM casting
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews'))
  and ord = 1;