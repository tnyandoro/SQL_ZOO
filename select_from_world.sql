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

---Two ways to be big
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

---Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000

---For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000.0,2),ROUND(GDP/1000000000.0,2)
FROM world
WHERE continent = 'South America';

---Show the name and per-capita for countries with GDP of at least 1 trillion and round the value to the nearest 1000
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000;


