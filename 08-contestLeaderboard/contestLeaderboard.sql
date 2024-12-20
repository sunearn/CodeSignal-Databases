CREATE PROCEDURE contestLeaderboard()
BEGIN
	SELECT name FROM leaderboard 
	ORDER By score DESC 
	LIMIT 5 OFFSET 3;
END
