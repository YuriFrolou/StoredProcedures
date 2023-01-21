CREATE DEFINER=`root`@`localhost` PROCEDURE `getNewsById`(inputId int)
BEGIN
SELECT news.id,news.title,news.description,news.cover,news.createdAt,news.updatedAt,categories.name AS category,users.firstName,users.lastName,comments.message AS comment FROM news
LEFT JOIN users ON news.userId=users.id
LEFT JOIN categories ON news.categoryId=categories.id
LEFT JOIN comments ON news.id=comments.newsId
WHERE news.id=inputId;
END