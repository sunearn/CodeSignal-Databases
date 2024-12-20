
CREATE PROCEDURE expressionsVerification()
BEGIN
    SELECT *
    FROM expressions
    WHERE CASE WHEN operation = '+' THEN a+b
	       WHEN operation = '-' THEN a-b 
	       WHEN operation = '*' THEN a*b
	       WHEN operation = '/' THEN a/b 
	  END = c
    ORDER BY id;
	
END
