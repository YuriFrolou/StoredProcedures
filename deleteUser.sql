CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser`(id int)
BEGIN
DELETE FROM users WHERE users.id=id;
END