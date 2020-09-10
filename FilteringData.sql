
# WHERE子句
SELECT prod_name, prod_price FROM products WHERE prod_price = 2.50;

## 如果是匹配字符串，则需要使用引号
SELECT prod_name, prod_price FROM products WHERE prod_name = 'fuses';

SELECT * FROM products WHERE prod_price < 10;

SELECT vend_id, prod_name FROM products WHERE vend_id <> 1003;
SELECT vend_id, prod_name FROM products WHERE vend_id != 1003;

SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 AND 10;

## 空值检查
## NULL 与字段包含0、空字符串或仅仅包含空格不同
SELECT prod_name FROM products WHERE prod_price IS NULL;
SELECT cust_id, cust_email FROM customers WHERE cust_email IS NULL;

