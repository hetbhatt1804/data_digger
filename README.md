
# PR. 1 - Data Digger

This project involves working with a relational database that includes tables for customers, orders, products, and order details. Below are the SQL queries for each required task based on the provided checklist.

---

## ✅ Customer Table Queries

**Retrieve all customer details**
```sql
select * from customer;
```

**Update a customer's address**
```sql
update customer set address = 'bdq' where customer_id = 1;
```

**Delete a customer using their CustomerID**
```sql
delete from customer where customer_id = 1;
```

**Display all customers whose name is 'Alice'**
```sql
select * from customer where name = 'alice';
```

---

## ✅ Orders Table Queries

**Retrieve all orders made by a specific customer**
```sql
select * from orders where customer_id = 2;
```

**Update an order’s total amount**
```sql
update orders set totalamount = 5000 where order_id = 3;
```

**Delete an order using its OrderID**
```sql
delete from orders where order_id = 4;
```

**Retrieve orders placed in the last 30 days**
```sql
select * from orders
where order_date >= curdate() - interval 30 day;
```

**Retrieve the highest, lowest, and average order amount using aggregate functions**
```sql
select max(totalamount) as highest_amount from orders;
select min(totalamount) as lowest_amount from orders;
select avg(totalamount) as average_amount from orders;
```

---

## ✅ Products Table Queries

**Retrieve all products sorted by price in descending order**
```sql
select * from product order by price desc;
```

**Update the price of a specific product**
```sql
update product set price = 4500 where product_id = 1;
```

**Delete a product if it’s out of stock**
```sql
delete from product where stock = 0;
```

**Retrieve products whose price is between ₹500 and ₹2000**
```sql
select * from product where price between 500 and 2000;
```

**Retrieve the most expensive and cheapest product using max() and min()**
```sql
select max(price) as most_expensive from product;
select min(price) as cheapest from product;
```

---

## ✅ OrderDetails Table Queries

**Retrieve all order details for a specific order**
```sql
select * from orderdetails where order_id = 1;
```

**Calculate the total revenue generated from all orders using sum()**
```sql
select sum(subtotal) as total_revenue from orderdetails;
```

**Retrieve the top 3 most ordered products**
```sql
select product_id, sum(quantity) as total_quantity
from orderdetails
group by product_id
order by total_quantity desc
limit 3;
```

**Count how many times a specific product has been sold using count()**
```sql
select count(*) as times_sold
from orderdetails
where product_id = 2;
```

---
