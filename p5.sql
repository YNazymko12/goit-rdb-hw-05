USE mydb;

DROP FUNCTION IF EXISTS divide_floats;
DELIMITER //
CREATE FUNCTION divide_floats(num1 FLOAT, num2 FLOAT) 
RETURNS FLOAT 
DETERMINISTIC
NO SQL
BEGIN
	DECLARE result FLOAT;
	SET result = num1 / num2;
	RETURN result;
END //
DELIMITER ;

SELECT *, divide_floats(quantity, 2.0) 
AS divided_quantity 
FROM order_details;