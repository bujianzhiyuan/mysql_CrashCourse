# 用通配符进行过滤

## % 通配符表示任何字符出现任意次数
SELECT prod_id, prod_name FROM products WHERE prod_name LIKE 'jet%';

SELECT prod_id, prod_name FROM products WHERE prod_name LIKE '%anvil%';
### 注意% 无法匹配NULL，如 WHERE prod_name LIKE '%'，不能匹配prod_name值为NULL的行

## _ 下划线通配符，只匹配单个字符，而不是多个字符
SELECT prod_id, prod_name FROM products WHERE prod_name LIKE '_ ton anvil';

