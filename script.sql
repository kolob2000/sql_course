# 1.
drop
database if exists product;
create
database product;

use
product;
drop table if exists phone;
create table phone
(
    id            serial,
    product_name  varchar(35),
    manufacturer  varchar(35),
    product_count integer unsigned not null default 0,
    price         decimal(10, 2) not null default 0.0

);

insert into phone(product_name, manufacturer, product_count, price)
values ('Iphone X', 'Apple', 3, 76000),
       ('Iphone 8', 'Apple', 2, 51000),
       ('Galaxy S9', 'Samsung', 2, 56000),
       ('Galaxy S8', 'Samsung', 1, 41000),
       ('P20 Pro', 'Huawei', 5, 36000);
# 2.

select product_name, manufacturer, price from phone where product_count > 2;

# 3.

select * from phone where manufacturer = 'Samsung';

# 4.

select * from phone where (product_count * price) > 100000 and (product_count * price) > 145000;

# 4 **
SELECT * FROM phone WHERE product_name LIKE '%Iphone%';
SELECT * FROM phone WHERE product_name LIKE '%Galaxy%';
SELECT * FROM phone WHERE product_name RLIKE '[0-9]';
SELECT * FROM phone WHERE product_name RLIKE '8';



