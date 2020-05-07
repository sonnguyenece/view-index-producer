EXPLAIN select * from products;
EXPLAIN select ID from products;

ALTER TABLE products 
ADD INDEX idx_products(productCode);
EXPLAIN SELECT productCode FROM products;

ALTER TABLE products
drop index idx_products;

ALTER TABLE products 
ADD INDEX idxComposit_products(productName),
ADD INDEX idxComposit1_products(productPrice);
EXPLAIN SELECT productPrice FROM products;
EXPLAIN SELECT productName FROM products;
EXPLAIN SELECT productName,productPrice FROM products;

