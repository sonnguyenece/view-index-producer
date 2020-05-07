DELIMITER //
CREATE PROCEDURE findAllProducts()
BEGIN
  SELECT * FROM products;
END //
DELIMITER ;
call findAllProducts;


DELIMITER //
CREATE PROCEDURE addNewProduct
(IN newProductName varchar(20),newProductPrice varchar(5))
BEGIN
  insert into products(products.productName,products.productPrice)
  value(newProductName,newProductPrice);
END //
DELIMITER ;

call addNewProduct('Shit','100$');
call addNewProduct('poop','1000$');

DELIMITER //
CREATE PROCEDURE editByID
(IN editID int,modifyProductName varchar(20),modifyProductPrice varchar(5))
BEGIN
  update products
  set 	products.productName=modifyProductName,
		products.productPrice=modifyProductPrice
  where products.id=editID;
END //
DELIMITER ;
call editByID(6,'Salt','1000$');
call editByID(7,'Pen','1000$');
call editByID(7,'Penis','0.1$');

DELIMITER //
CREATE PROCEDURE deleteByID
(IN deleteID int)
BEGIN
DELETE FROM products WHERE products.id=deleteID;
END //
DELIMITER ;

call deletebyID(7);
call addNewProduct('Dozen','130$');