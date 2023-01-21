CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCommentsByNewsId`(inputId int)
BEGIN
SELECT comments.id,comments.message,comments.createdAt,users.firstName,users.lastName,news.title AS news 
FROM comments LEFT JOIN users
ON comments.userId=users.id
LEFT JOIN news
ON comments.newsId=news.id
WHERE news.id=inputId;
END