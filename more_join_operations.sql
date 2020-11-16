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