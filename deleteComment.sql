CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteComment`(inputId int)
BEGIN
DELETE FROM comments WHERE comments.id=inputId;
END