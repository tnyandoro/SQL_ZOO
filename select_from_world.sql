---querying name, continent, population data from the world table.
SELECT name, continent, population FROM world

---Large Countries
SELECT name FROM world
WHERE population >= 200000000

---Per capita GDP
SELECT name, GDP/population 
FROM world
WHERE population >= 200000000;

---South America In millions
SELECT name, population/1000000 
FROM world
WHERE continent = 'South America';

---Show the name and population for France, Germany, Italy
SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

  ---Show the countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%United%'
