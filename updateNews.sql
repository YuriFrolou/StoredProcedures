CREATE DEFINER=`root`@`localhost` PROCEDURE `updateNews`(inputId int,title varchar(30),description varchar(30),cover varchar(30))
BEGIN
UPDATE news SET news.title = title WHERE id=inputId AND title !='';
UPDATE news SET news.description = description WHERE id=inputId AND description !='';
UPDATE news SET news.cover = cover WHERE id=inputId AND cover !='';
UPDATE users SET news.updatedAt =now() WHERE id=inputId;
END