---List the films where the yr is 1962 [Show id, title]
SELECT id, title
 FROM movie
 WHERE yr=1962

 ---Give year of 'Citizen Kane'.
 SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
order by yr;
