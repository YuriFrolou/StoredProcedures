CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllComments`()
BEGIN
SELECT * FROM comments;
END