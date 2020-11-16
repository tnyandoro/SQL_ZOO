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