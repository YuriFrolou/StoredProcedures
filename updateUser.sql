CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser`(inputId int, newFirstname varchar(30), newLastname varchar(30),newEmail varchar(30), newPassword varchar(30), newCover varchar(30))
BEGIN
UPDATE users SET users.firstName = newFirstname WHERE id=inputId AND newFirstname !='';
UPDATE users SET users.lastName = newLastname WHERE id=inputId AND newLastname !='';
UPDATE users SET users.email = newEmail WHERE id=inputId AND newEmail !='';
UPDATE users SET users.password = newPassword WHERE id=inputId AND newPassword !='';
UPDATE users SET users.cover = newCover WHERE id=inputId AND newCover !='';
UPDATE users SET users.updatedAt =now() WHERE id=inputId;
END