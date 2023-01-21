CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategoryById`(inputId int)
BEGIN
SELECT id,name,createdAt,updatedAt FROM categories WHERE categories.id=inputId;
END