# 创建计算字段
## 拼接字段
SELECT CONCAT(vend_name,'(',vend_country,')') FROM vendors ORDER BY vend_name;

## RTRIM(str) 删除数据右侧多余的空格
SELECT CONCAT(vend_name,'(',RTRIM(vend_country),')') FROM vendors ORDER BY vend_name;

## 使用别名
SELECT CONCAT(vend_name,'(',RTRIM(vend_country),')') AS vend_title FROM vendors ORDER BY vend_name;

## 执行算术计算
SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price FROM orderitems WHERE order_num = 20005;