
# 数据过滤
SELECT prod_id, prod_price, prod_name FROM products WHERE vend_id = 1003 AND prod_price <= 10;

SELECT prod_name, prod_price FROM products WHERE vend_id = 1002 OR vend_id = 1003;

SELECT prod_name, prod_price FROM products WHERE vend_id = 1002 OR prod_price <= 10;
## AND 的计算次序优先级比OR 高
SELECT prod_name, prod_price FROM products WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price <= 10;

## IN 操作符
SELECT prod_name, prod_price FROM products WHERE vend_id IN (1002,1003) ORDER BY prod_name;

## NOT 操作符
### NOT 可以对IN BETWEEN EXISTS 子句取反
SELECT prod_name, prod_price, vend_id FROM products WHERE vend_id NOT IN (1002, 1003) ORDER BY prod_name;


