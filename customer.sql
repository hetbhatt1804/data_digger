create table customer(

    customer_id int auto_increment primary key,
    name varchar(20),
    email varchar(30),
    address varchar(20)
);

insert into customer (name, email, address) values
('het', 'het04@gmail.com', 'srt'),
('raj', 'raj02@gmail.com', 'srt'),
('umesh', 'umesh23@gmail.com', 'bdq'),
('nick', 'nick56@gmail.com', 'amd'),
('mohan', 'mohan34@gmail.com', 'bdq');
create table orders (
    order_id int auto_increment primary key,
    customer_id int,
    order_date date,
    totalamount int,
    foreign key (customer_id) references customer(customer_id)
);
insert into orders (customer_id, order_date, totalamount) values
(2, '2025-07-03', 20000),
(1, '2025-07-04', 15000),
(5, '2025-07-01', 40000),
(2, '2025-06-30', 12000),
(4, '2025-06-20', 18000),
(3, '2025-07-25', 33000);
create table product (
    product_id int auto_increment primary key,
    product_name varchar(20),
    price int,
    stock int
);
insert into product (product_name, price, stock) values
('keyboard', 1000 , 4),
('mouse', 500, 7),
('laptop', 50000 , 0),
('monitor' , 3000 , 3),
('keyboard' , 4000 , 2);
create table orderdetails (
    orderdetailid int auto_increment primary key,
    order_id int,
    product_id int,
    quantity int,
    subtotal int,
    foreign key (product_id) references product(product_id),
    foreign key (order_id) references orders(order_id)
);
insert into orderdetails (order_id, product_id, quantity, subtotal) values
(1, 3 , 4, 5000),
(4, 2, 4, 6000),
(3, 2, 4, 2000),
(2, 5, 2, 4000),
(1, 1, 1, 3330),
(5, 4, 3, 500);

select * from customer;
update customer set address = 'bdq' where customer_id = 1;
delete from customer where customer_id = 1;
select * from customer where name like '%alice%';
select * from customer where customer_id = 2;
update orders set totalamount = 5000 where order_id = 3;
delete from orders where order_id = 4;
select * from orders where order_date < '2025-07-01';
select max(totalamount) from orders;
select min(totalamount) from orders;
select avg(totalamount) from orders;
delete from product where stock = 0;
select * from product where price between 500 and 2000;
select max(price) from product;
select min(price) from product;
select * from orderdetails where order_id = 1;
select sum(subtotal) from orderdetails;
select * from orderdetails order by orderdetailid desc limit 3;
select product_id, count(*) from orderdetails group by product_id;