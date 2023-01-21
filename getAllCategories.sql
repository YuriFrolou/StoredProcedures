CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCategories`()
BEGIN
SELECT id,name,createdAt,updatedAt FROM categories;
END