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


---

