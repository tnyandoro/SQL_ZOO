---Modify it to show the matchid and player name for all goals scored by Germany.
SELECT matchid, player
FROM goal 
WHERE teamid = 'GER';

--Show id, stadium, team1, team2 for just game 1012
SELECT  id, stadium, team1, team2
FROM  game
WHERE  id = 1012;

---Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT  goal.player, goal.teamid, game.stadium, game.mdate
FROM  game JOIN goal ON (game.id = goal.matchid)
WHERE  goal.teamid = 'GER';

---Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
SELECT  game.team1, game.team2, goal.player
FROM  game JOIN goal ON (game.id = goal.matchid)
WHERE  goal.player LIKE 'Mario%';

---Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
SELECT player, teamid, coach, gtime
FROM eteam e JOIN goal g ON (e.id = g.teamid)
WHERE gtime < 10;

---List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
SELECT mdate, teamname
FROM eteam e JOIN game g ON (e.id = g.team1)
WHERE coach = 'Fernando Santos'

---List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
SELECT player
FROM game ga JOIN goal go ON (ga.id = go.matchid)
WHERE stadium = 'National Stadium, Warsaw';

---More difficult questions
SELECT DISTINCT(player)
FROM game ga JOIN goal go ON (ga.id = go.matchid)
WHERE teamid!='GER' AND (team1 = 'GER' OR team2 = 'GER');

---Show teamname and the total number of goals scored
SELECT teamname, COUNT(teamid)
FROM goal g JOIN eteam e ON (g.teamid= e.id)
GROUP BY teamname;

---Show the stadium and the number of goals scored in each stadium
SELECT stadium, COUNT(player)
FROM game ga JOIN goal go ON (ga.id= go.matchid)
GROUP BY stadium;

---For every match involving 'POL', show the matchid, date and the number of goals scored.
SELECT matchid, mdate, COUNT(teamid)
FROM game ga JOIN goal go ON (ga.id= go.matchid)
WHERE (ga.team1 = 'POL' OR ga.team2 = 'POL')
GROUP BY matchid, mdate;

---For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
SELECT matchid, mdate, COUNT(teamid)
FROM game ga JOIN goal go ON (ga.id= go.matchid)
WHERE (ga.team1 = 'GER' OR ga.team2 = 'GER') AND teamid = 'GER' 
GROUP BY matchid, mdate;

---Sort your result by mdate, matchid, team1 and team2.
SELECT   game.mdate, game.team1,
  SUM(CASE WHEN goal.teamid = game.team1 THEN 1 ELSE 0 END) AS score1,
  game.team2,
  SUM(CASE WHEN goal.teamid = game.team2 THEN 1 ELSE 0 END) AS score2
FROM  game LEFT JOIN goal ON game.id = goal.matchid
GROUP BY  game.mdate, game.team1, game.team2
ORDER BY  game.mdate, goal.matchid;

