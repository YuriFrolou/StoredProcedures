CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCategory`(id int)
BEGIN
DELETE FROM categories WHERE categories.id=id;
END