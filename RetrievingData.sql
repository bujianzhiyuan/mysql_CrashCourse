CREATE DATABASE crashcourse;
USE crashcourse;
SHOW DATABASES;
SHOW TABLES;

## 检索单个列
SELECT prod_name FROM products;

## 检索多个列
SELECT prod_id, prod_name, prod_price FROM products;

## 检索所有列(最好不要使用通配符*，检索不需要的列通常会降低检索和应用程序的性能。)
SELECT * FROM products;

## 检索不同的行（值不重复）
SELECT DISTINCT vend_id FROM products;
## 不能部分使用 DISTINCT 如给出SELECT DISTINCT vend_id, prod_price FROM products;

## 限制结果
SELECT prod_name FROM products LIMIT 5;
### 返回从行5开始的5行
SELECT prod_name FROM products LIMIT 5,5;

## 完全限定表名
SELECT products.prod_name FROM products;
SELECT products.prod_name FROM crashcourse.products;


