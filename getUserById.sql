CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserById`(userId integer)
BEGIN
SELECT * FROM USERS WHERE USERS.id=userId;
END