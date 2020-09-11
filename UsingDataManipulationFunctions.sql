# 使用数据处理函数
## UPPER(str)
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase FROM vendors ORDER BY vend_name;
## SOUNDEX(str)
SELECT cust_name, cust_contact FROM customers WHERE cust_contact = 'Y.Lie';
SELECT cust_name, cust_contact FROM customers WHERE SOUNDEX(cust_contact) = SOUNDEX('Y.Lie');
SELECT cust_name, cust_contact FROM customers WHERE SOUNDEX(cust_contact) = SOUNDEX('Y.Li');
## 日期处理函数
SELECT cust_id, order_num FROM orders WHERE order_date = '2005-09-01';
### 应该使用 DATE函数来检索日期，如
SELECT cust_id, order_num FROM orders WHERE DATE(order_date) = '2005-09-01';
### 检索2005年9月所有订单
SELECT cust_id, order_num FROM orders WHERE DATE(order_date) BETWEEN '2005-09-01' AND '2005-09-30';
SELECT cust_id, order_num FROM orders WHERE YEAR(order_date) = 2005 AND MONTH(order_date) = 9;