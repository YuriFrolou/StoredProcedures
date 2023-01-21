CREATE DEFINER=`root`@`localhost` PROCEDURE `createComment`(message varchar(60),newsId int,userId int)
BEGIN
INSERT INTO comments(message,createdAt,updatedAt,newsId,userId)
VALUES(message,now(),now(),newsId,userId);
END