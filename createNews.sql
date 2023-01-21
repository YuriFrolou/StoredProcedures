CREATE DEFINER=`root`@`localhost` PROCEDURE `createNews`(title varchar(30),description varchar(30),cover varchar(30),userId int,catId int)
BEGIN
INSERT INTO news (title,description,cover,createdAt,updatedAt,userId,categoryId) VALUES(title,description,cover,now(),now(),userId,catId);
END