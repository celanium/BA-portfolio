/* Создать 2 представления (для пользователей)
 * Создать две хранимые процедуры или функцию
 * Создать 2 триггера*/

USE gridina_shop;

-- Представления:
-- Товары в магазине + текущая скидка

CREATE OR REPLACE VIEW products_in_stores AS
SELECT p.name product, COALESCE(d.new_price, p.price) price, s.name store, sp.product_count count, d.finished_at discount_ends 
FROM products p
LEFT JOIN discounts d ON (p.id=d.product_id and d.started_at <= now() and (d.finished_at IS NULL OR d.finished_at > now())) 
JOIN storehouses_products sp ON (p.id = sp.product_id and sp.product_count > 0)
JOIN storehouses s ON sp.storehouse_id = s.id 
ORDER BY p.name

SELECT * FROM products_in_stores;

+-------------+------------+-----------------+-------+
| product     | price      | store           | count |
+-------------+------------+-----------------+-------+
| repellat    |      79.92 | West Lessie     |    61 |
| et          | 9999999.99 | West Lessie     |    16 |
| nisi        |    1909.41 | West Lessie     |   117 |
| accusantium |     710.90 | West Lessie     |   145 |
| omnis       |    4431.37 | West Lessie     |     3 |
| rerum       |    3437.40 | West Lessie     |    77 |
| inventore   |    4371.59 | West Lessie     |   131 |
| ducimus     |    1745.71 | West Lessie     |    46 |
| dicta       |    3115.00 | West Lessie     |    85 |
| modi        |    1879.51 | West Lessie     |    37 |
| repellat    |      79.92 | Carmenbury      |   101 |
| maiores     |  623497.55 | Carmenbury      |    55 |
| id          | 3439800.19 | Carmenbury      |   139 |
| minima      |    3231.55 | Carmenbury      |     9 |
| optio       |     543.00 | Carmenbury      |    85 |
| laudantium  |    1893.73 | Carmenbury      |   118 |
| ea          |    3954.20 | Carmenbury      |     5 |
| et          |    3026.86 | Carmenbury      |    61 |
| totam       |     105.31 | Carmenbury      |    93 |
| est         |    4926.76 | Carmenbury      |    12 |
| vel         |    3759.71 | Carmenbury      |   106 |
| repellat    |      79.92 | South Woodrow   |    63 |
| sequi       |    1211.16 | South Woodrow   |    30 |
| omnis       |       3.88 | South Woodrow   |    37 |
| nulla       |     937.68 | South Woodrow   |    75 |
| facere      |     828.00 | South Woodrow   |    98 |
| et          |    3836.68 | South Woodrow   |    46 |
| voluptas    |    4403.80 | South Woodrow   |    19 |
| aliquam     |     323.31 | South Woodrow   |   105 |
| earum       |    3455.14 | South Woodrow   |    22 |
| modi        |    4986.39 | South Woodrow   |   148 |
| sapiente    |    1821.69 | South Woodrow   |   118 |
| sint        |    6746.60 | Daremouth       |   141 |
| dolore      | 9999999.99 | Daremouth       |    99 |
| iste        |     916.21 | Daremouth       |    34 |
| expedita    |     637.56 | Daremouth       |    89 |
| laudantium  |    2645.75 | Daremouth       |    66 |
| ex          |    1757.00 | Daremouth       |   115 |
| optio       |    1553.90 | Daremouth       |    89 |
| sequi       |    1869.68 | Daremouth       |    11 |
| qui         |    2617.95 | Daremouth       |   110 |
| eaque       |    1800.22 | Daremouth       |    66 |
| repellat    |      79.92 | Port Lornaville |   200 |
| perferendis |     491.30 | Port Lornaville |   150 |
| maiores     |    4354.80 | Port Lornaville |    53 |
| quod        |    4192.41 | Port Lornaville |    69 |
| numquam     |    4947.10 | Port Lornaville |    23 |
| suscipit    |    3185.08 | Port Lornaville |    91 |
| quia        |    3092.11 | Port Lornaville |    34 |
| sit         |     634.27 | Port Lornaville |    99 |
| odit        |     979.00 | Port Lornaville |   108 |
| non         |     451.86 | Port Lornaville |    88 |
| nostrum     |    1807.89 | Port Lornaville |    38 |
+-------------+------------+-----------------+-------+
53 rows in set (0.00 sec)

--  заказы пользователя по датам

CREATE OR REPLACE VIEW user_orders AS
SELECT c.id cid, c.name cust_name, p.name product, op.product_count count, o.orders_date date
FROM customers c 
JOIN orders o ON c.id = o.customer_id
JOIN order_products op ON op.order_id = o.id 
JOIN products p ON op.product_id = p.id
ORDER by c.name;

SELECT * FROM user_orders
WHERE cust_name LIKE 'Adele%';

+-----+---------------+---------+-------+---------------------+
| cid | cust_name     | product | count | date                |
+-----+---------------+---------+-------+---------------------+
|  49 | Adele Okuneva | eaque   |    51 | 2022-08-31 19:59:05 |
+-----+---------------+---------+-------+---------------------+
1 row in set (0.00 sec)

SELECT * FROM user_orders
WHERE cust_name LIKE 'Mar%';

+-----+-----------------+------------+-------+---------------------+
| cid | cust_name       | product    | count | date                |
+-----+-----------------+------------+-------+---------------------+
|  52 | Margot Stamm MD | maiores    |    99 | 2022-07-04 03:55:21 |
|  48 | Maria Gerlach   | sapiente   |    48 | 2022-10-12 22:41:43 |
|  22 | Marilyne Weber  | laudantium |    13 | 2022-11-13 13:56:15 |
|  31 | Markus Kiehn    | inventore  |    46 | 2022-08-12 09:24:32 |
+-----+-----------------+------------+-------+---------------------+
4 rows in set (0.00 sec)

-- процедуры

-- Удалить заказы старше заданной даты

DROP PROCEDURE IF EXISTS del_orders;

DELIMITER //
CREATE PROCEDURE del_orders (IN date_begin datetime) 
BEGIN
	START TRANSACTION;
	DELETE FROM order_products op WHERE op.order_id IN (
	SELECT o.id FROM orders o 
	WHERE o.orders_date <= date_begin);
    DELETE FROM orders o WHERE o.orders_date <= date_begin;
   	COMMIT;
END//
DELIMITER ; 

SELECT o.id FROM orders o WHERE o.orders_date <= '2022-03-01';

mysql> SELECT o.id FROM orders o WHERE o.orders_date <= '2022-03-01';
+----+
| id |
+----+
|  6 |
| 11 |
| 13 |
| 35 |
| 47 |
| 64 |
+----+
6 rows in set (0.00 sec)

mysql> CALL del_orders ('2022-03-01');
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT o.id FROM orders o WHERE o.orders_date <= '2022-03-01';
    -> //
Empty set (0.00 sec)

-- Удалить просроченные скидки
DROP PROCEDURE IF EXISTS del_old_discounts;

DELIMITER //
CREATE PROCEDURE del_old_discounts (IN date_begin DATETIME) 
BEGIN
	DELETE FROM discounts d WHERE d.finished_at < COALESCE (date_begin, NOW());
END//
DELIMITER ; 


UPDATE discounts  SET finished_at='2022-05-31' WHERE product_id =1 AND started_at < '2022-06-01';
SELECT * FROM discounts d ;


mysql> SELECT * FROM discounts d ;
+------------+------------+-------------+------------+------------+------------+
| product_id | started_at | finished_at | created_at | updated_at | new_price  |
+------------+------------+-------------+------------+------------+------------+
|          1 | 2022-05-27 | 2022-05-31  | 2022-04-14 | NULL       |      79.92 |
|          2 | 2022-08-25 | NULL        | 2022-10-26 | NULL       |  623497.55 |
|          3 | 2022-05-19 | NULL        | 2022-05-31 | NULL       |    1211.16 |
|          4 | 2022-08-30 | NULL        | 2022-08-19 | NULL       |    6746.60 |
|          5 | 2022-08-02 | NULL        | 2022-06-27 | NULL       |     491.30 |
|          6 | 2022-05-03 | NULL        | 2022-12-12 | NULL       | 9999999.99 |
|          7 | 2023-01-23 | NULL        | 2022-07-18 | NULL       | 3439800.19 |
|          8 | 2022-04-22 | NULL        | 2022-03-20 | NULL       |       3.88 |
|          9 | 2022-10-04 | NULL        | 2023-01-24 | NULL       | 9999999.99 |
|         10 | 2022-11-29 | NULL        | 2022-10-12 | NULL       |    4354.80 |
+------------+------------+-------------+------------+------------+------------+
10 rows in set (0.00 sec)

CALL del_old_discounts ('2022-06-01');

mysql> SELECT * FROM discounts d ;
+------------+------------+-------------+------------+------------+------------+
| product_id | started_at | finished_at | created_at | updated_at | new_price  |
+------------+------------+-------------+------------+------------+------------+
|          2 | 2022-08-25 | NULL        | 2022-10-26 | NULL       |  623497.55 |
|          3 | 2022-05-19 | NULL        | 2022-05-31 | NULL       |    1211.16 |
|          4 | 2022-08-30 | NULL        | 2022-08-19 | NULL       |    6746.60 |
|          5 | 2022-08-02 | NULL        | 2022-06-27 | NULL       |     491.30 |
|          6 | 2022-05-03 | NULL        | 2022-12-12 | NULL       | 9999999.99 |
|          7 | 2023-01-23 | NULL        | 2022-07-18 | NULL       | 3439800.19 |
|          8 | 2022-04-22 | NULL        | 2022-03-20 | NULL       |       3.88 |
|          9 | 2022-10-04 | NULL        | 2023-01-24 | NULL       | 9999999.99 |
|         10 | 2022-11-29 | NULL        | 2022-10-12 | NULL       |    4354.80 |
+------------+------------+-------------+------------+------------+------------+
9 rows in set (0.00 sec)


-- TRIGGER автоматически заполнять поле updated_at при апдейте таблицы products
DROP TRIGGER IF EXISTS products_update;

DELIMITER //
CREATE TRIGGER products_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	SET NEW.updated_at = NOW();
END//
DELIMITER ;

mysql> SELECT * FROM products p LIMIT 10;
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
| id | name        | price   | supplier_id | category_id | rubric_id | created_at          | updated_at          |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
|  1 | repellat    | 3296.00 |           1 |           1 |         1 | 2022-12-24 15:48:10 | 2023-01-25 07:27:01 |
|  2 | maiores     | 2404.70 |           2 |           2 |         2 | 2022-08-26 04:10:16 | 2023-01-20 12:26:08 |
|  3 | sequi       | 2620.27 |           3 |           3 |         3 | 2022-09-07 20:46:48 | 2023-01-28 01:27:54 |
|  4 | sint        | 3391.87 |           4 |           4 |         4 | 2022-06-27 14:12:13 | 2023-01-17 07:12:57 |
|  5 | perferendis |  176.69 |           5 |           5 |         5 | 2022-04-09 01:44:11 | 2023-01-12 04:42:58 |
|  6 | et          | 2281.31 |           6 |           6 |         1 | 2023-01-31 03:50:34 | 2023-01-11 00:22:02 |
|  7 | id          |   57.60 |           7 |           7 |         2 | 2022-03-23 14:18:05 | 2023-01-18 02:49:32 |
|  8 | omnis       | 4577.75 |           8 |           8 |         3 | 2023-01-29 08:39:42 | 2023-01-12 12:56:42 |
|  9 | dolore      | 3775.54 |           9 |           9 |         4 | 2022-08-11 03:37:27 | 2023-01-04 09:43:51 |
| 10 | maiores     | 4906.51 |          10 |          10 |         5 | 2022-08-31 21:09:21 | 2023-01-08 22:08:45 |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
10 rows in set (0.00 sec)

UPDATE products set price=3300.00 where id=1;
mysql> SELECT * FROM products p LIMIT 10;
    -> //
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
| id | name        | price   | supplier_id | category_id | rubric_id | created_at          | updated_at          |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
|  1 | repellat    | 3300.00 |           1 |           1 |         1 | 2022-12-24 15:48:10 | 2023-02-16 00:16:07 |
|  2 | maiores     | 2404.70 |           2 |           2 |         2 | 2022-08-26 04:10:16 | 2023-01-20 12:26:08 |
|  3 | sequi       | 2620.27 |           3 |           3 |         3 | 2022-09-07 20:46:48 | 2023-01-28 01:27:54 |
|  4 | sint        | 3391.87 |           4 |           4 |         4 | 2022-06-27 14:12:13 | 2023-01-17 07:12:57 |
|  5 | perferendis |  176.69 |           5 |           5 |         5 | 2022-04-09 01:44:11 | 2023-01-12 04:42:58 |
|  6 | et          | 2281.31 |           6 |           6 |         1 | 2023-01-31 03:50:34 | 2023-01-11 00:22:02 |
|  7 | id          |   57.60 |           7 |           7 |         2 | 2022-03-23 14:18:05 | 2023-01-18 02:49:32 |
|  8 | omnis       | 4577.75 |           8 |           8 |         3 | 2023-01-29 08:39:42 | 2023-01-12 12:56:42 |
|  9 | dolore      | 3775.54 |           9 |           9 |         4 | 2022-08-11 03:37:27 | 2023-01-04 09:43:51 |
| 10 | maiores     | 4906.51 |          10 |          10 |         5 | 2022-08-31 21:09:21 | 2023-01-08 22:08:45 |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
10 rows in set (0.00 sec)

DROP TRIGGER IF EXISTS before_insert_discount;
-- выводить ошибку при попытке вставки скидки с ценой больше текущей
DELIMITER //
CREATE  TRIGGER  before_insert_discount BEFORE INSERT ON discounts
FOR EACH ROW 
BEGIN
    SET @old_price = (SELECT price FROM products WHERE id = NEW.product_id);
	IF NEW.new_price > @old_price
    THEN 
       SIGNAL SQLSTATE '50000' SET MESSAGE_TEXT = 'ОШИБКА! Скидочная цена больше обычной'; 
	END IF;
END//
DELIMITER ;

mysql> select  * from products LIMIT 5;
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
| id | name        | price   | supplier_id | category_id | rubric_id | created_at          | updated_at          |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
|  1 | repellat    | 3300.00 |           1 |           1 |         1 | 2022-12-24 15:48:10 | 2023-02-16 00:16:07 |
|  2 | maiores     | 2404.70 |           2 |           2 |         2 | 2022-08-26 04:10:16 | 2023-01-20 12:26:08 |
|  3 | sequi       | 2620.27 |           3 |           3 |         3 | 2022-09-07 20:46:48 | 2023-01-28 01:27:54 |
|  4 | sint        | 3391.87 |           4 |           4 |         4 | 2022-06-27 14:12:13 | 2023-01-17 07:12:57 |
|  5 | perferendis |  176.69 |           5 |           5 |         5 | 2022-04-09 01:44:11 | 2023-01-12 04:42:58 |
+----+-------------+---------+-------------+-------------+-----------+---------------------+---------------------+
5 rows in set (0.00 sec)


INSERT INTO discounts (product_id, new_price, started_at) VALUES (2, 5000, '2023-03-01');

mysql> INSERT INTO discounts (product_id, new_price, started_at) VALUES (2, 5000, '2023-03-01');
ERROR 1644 (50000): ОШИБКА! Скидочная цена больше обычной

