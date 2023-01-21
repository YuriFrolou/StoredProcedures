CREATE DEFINER=`root`@`localhost` PROCEDURE `createCategory`(inputName varchar(30))
BEGIN
INSERT INTO categories (name,createdAt,updatedAt) VALUES (inputName,now(),now());
END