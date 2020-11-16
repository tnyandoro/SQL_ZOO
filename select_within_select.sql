---Bigger than Russia
SELECT name 
FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

---Gdp bigger than UK
SELECT name 
FROM world 
WHERE continent = 'Europe' and ( (gdp/population) > 
(SELECT gdp/population from world where name = 'United Kingdom'))


-- Order by name of the country.
SELECT name, continent
FROM world
WHERE 
continent IN (SELECT continent 
      FROM world
      WHERE name = 'Australia' OR name = 'Argentina') ORDER BY name

---Between Canada and Poland
SELECT name, population FROM world
WHERE population >
    (SELECT population FROM world
    WHERE name = 'Canada')
AND population <
    (SELECT population FROM world
    WHERE name = 'Poland');

---Percentages of Germany
