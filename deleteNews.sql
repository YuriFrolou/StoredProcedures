CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteNews`(inputId int)
BEGIN
DELETE FROM news WHERE news.id=inputId;
END