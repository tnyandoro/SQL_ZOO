---Bigger than Russia
SELECT name 
FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
