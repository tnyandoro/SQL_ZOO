---How many stops are in the database.
SELECT count(id) FROM stops;

---Find the id value for the stop 'Craiglockhart'
SELECT id FROM stops
WHERE name = 'Craiglockhart';

---routes and stops
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company,num
HAVING count(*) = 2;

---Change the query so that it shows the services from Craiglockhart to London Road.
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 and b.stop = 149;

---'Craiglockhart' and 'London Road' are shown. If you are tired of these places try 'Fairmilehead' against 'Tollcross'
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'and stopb.name = 'London Road';

---Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith
SELECT company,num  
FROM route WHERE num in 
(SELECT  a.num FROMroute as a,route as b 
WHERE a.stop != b.stop 
AND (a.company = b.company AND a.num=b.num)
AND a.stop='115' and b.stop='137')
group by num,company;

---Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'
SELECT b.company, b.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name = 'Tollcross';

---

