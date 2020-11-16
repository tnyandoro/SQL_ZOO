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
SELECT name, concat(ROUND(100*population/(SELECT population FROM world WHERE name= 'Germany'),0),'%') As 'percentage'
FROM world WHERE continent ='Europe';

---Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
SELECT name
FROM world
WHERE gdp > ALL (SELECT gdp
 FROM world
 WHERE continent= 'Europe' AND gdp > 0 ); 

---Largest in each continent
SELECT continent, name, area FROM world x
WHERE area >= ALL
  (SELECT area FROM world y
      WHERE y.continent=x.continent
          AND area>0);

---List each continent and the name of the country that comes first alphabetical

SELECT continent, name FROM world x
  WHERE name <= ALL
    (SELECT name FROM world y
        WHERE y.continent = x.continent);

---Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.        
SELECT name, continent, population
FROM world 
WHERE continent NOT IN
     (SELECT DISTINCT continent
      FROM world
      WHERE population > 25000000);

--- Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.
SELECT name, continent FROM world x
WHERE population > ALL
	(SELECT 3*population FROM world y
		WHERE y.continent=x.continent AND x.name <> y.name);     