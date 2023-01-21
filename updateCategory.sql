CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCategory`(inputId int, inputName varchar(30))
BEGIN
UPDATE categories SET categories.name = inputName WHERE id=inputId AND inputName !='';
UPDATE categories SET categories.updatedAt =now() WHERE id=inputId;
END