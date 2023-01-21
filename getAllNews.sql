CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllNews`()
BEGIN
SELECT id,title,description,cover,categoryId,userId FROM news;
END