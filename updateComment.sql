CREATE DEFINER=`root`@`localhost` PROCEDURE `updateComment`(inputId int,message varchar(60))
BEGIN
UPDATE comments SET comments.message = message WHERE id=inputId AND message !='';
UPDATE comments SET comments.updatedAt =now() WHERE id=inputId;
END