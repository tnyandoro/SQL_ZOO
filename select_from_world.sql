---querying name, continent, population data from the world table.
SELECT name, continent, population FROM world

---Large Countries
SELECT name FROM world
WHERE population >= 200000000

---Per capita GDP
SELECT name, GDP/population 
FROM world
WHERE population >= 200000000;
