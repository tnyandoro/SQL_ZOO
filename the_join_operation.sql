---Modify it to show the matchid and player name for all goals scored by Germany.
SELECT matchid, player
FROM goal 
WHERE teamid = 'GER';

--Show id, stadium, team1, team2 for just game 1012
