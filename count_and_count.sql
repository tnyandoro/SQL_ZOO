---Total world population
SELECT name, continent FROM world x
WHERE population > ALL
	(SELECT 3*population FROM world y
		WHERE y.continent=x.continent AND x.name <> y.name);

---List of continents
SELECT DISTINCT
 continent  
FROM world;

---Give the total GDP of Africa
SELECT  SUM(gdp)
FROM  world
WHERE  continent = 'Africa';

---Count the big countries
SELECT COUNT(name) FROM world
WHERE area >= 1000000;

---What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT SUM(population) 
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

---For each continent show the continent and number of countries.
SELECT continent, COUNT(name) 
FROM world
GROUP BY continent;

---Counting big countries in each continent
SELECT  continent
FROM  world
GROUP BY  continent
HAVING  SUM(population)>=100000000;