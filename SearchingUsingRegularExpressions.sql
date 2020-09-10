# 用正则表达式进行搜索

SELECT prod_name FROM products WHERE prod_name REGEXP '[123] Ton' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '1|2|3 Ton' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '[^123]' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '[1-5] Ton' ORDER BY prod_name;

## 匹配特殊字符
## 要匹配特殊字符必须以 \\ 为签到
SELECT vend_name FROM vendors WHERE vend_name REGEXP '\\.' ORDER BY vend_id;

## ? 匹配它前面的任何字符的0次或1次出现
SELECT prod_name FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)' ORDER BY prod_name;

## 定位符
SELECT prod_name FROM products WHERE prod_name REGEXP '^[0-9\\.]' ORDER BY prod_name;
### LIKE和REGEXP的区别：LIKE匹配整个串，而REGEXP匹配子串。通过使用^开始，$结束，可以使REGEXP作用与LIKE一样


