
## 排序数据
### 没有特定顺序
SELECT prod_name FROM products;
### ORDER BY
SELECT prod_name FROM products ORDER BY prod_name;

## 按多个列排序
/* 先按价格排序，再按名称排序 */
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price, prod_name;

## 指定排序方向
### 降序排列必须指定DESC关键字
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC;
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC, prod_name;
### DESC关键字只应用到直接位于其前面的列名。

### 升序排列可以使用关键字ASC，通常省略

## 找出最昂贵的商品名称
SELECT prod_name, prod_price FROM products ORDER BY prod_price DESC LIMIT 1;


