CREATE VIEW view_name AS
SELECT productCode, productName, productPrice,productStatus 
FROM products
;

CREATE OR REPLACE VIEW view_name AS
SELECT productCode, productName, productPrice,productStatus ,productDescription,productAmount
FROM products
;

select * from view_name;

drop view view_name;

