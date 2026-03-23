-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

--PART 1

-- 1. Write a query to select all data from the `Customers` table.

SELECT * FROM assignment.Customers;

-- 2. Write a query to select the total number of products from the `Products` table.

SELECT COUNT(distinct product_id) products_count FROM assignment.Products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.

SELECT product_name,price FROM assignment.Products
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.

SELECT AVG(price) AVG_PRICE FROM assignment.Products;

-- 5. Write a query to find the total sales amount from the `Sales` table.

SELECT SUM(total_amount) total_sales_amount FROM assignment.Sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.

SELECT distinct membership_status distinct_membership_status FROM assignment.Customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.

select first_name || ' ' ||last_name as full_name FROM assignment.Customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.

SELECT product_name FROM assignment.Products
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.

SELECT MAX(price) MAX_PRICE FROM assignment.Products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.

SELECT product_id,COUNT(sale_id) sales_per_product FROM assignment.Sales
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.

SELECT product_id,sum(quantity_sold) quantity_per_product FROM assignment.Sales
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.

select MIN(price) MIN_PRICE from assignment.Products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.

select first_name || ' ' || last_name as Cust_Above_1000 from assignment.Customers A 
inner join assignment.Sales B 
on A.customer_id = B.customer_id 
inner join assignment.Products C 
on B.product_id = C.product_id 
where C.price > 1000;


-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.

select product_name,total_amount from assignment.Sales A 
inner join assignment.Products B 
on A.product_id = B.product_id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.

select first_name || ' ' || last_name full_name, total_amount from assignment.Sales A 
inner join assignment.Customers B 
on A.customer_id  = B.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.

select 
first_name,
last_name,
product_name,
quantity_sold
from assignment.Customers A 
inner join assignment.Sales B 
on A.customer_id = B.customer_id 
inner join assignment.Products C 
on B.product_id = C.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.

SELECT 
    c1.first_name AS customer1_first_name, 
    c1.last_name AS customer1_last_name, 
    c2.first_name AS customer2_first_name, 
    c2.last_name AS customer2_last_name, 
    c1.membership_status
FROM 
    Customers c1
JOIN 
    Customers c2 ON c1.membership_status = c2.membership_status
WHERE 
    c1.customer_id > c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.

select 
product_name,
sum(quantity_sold) product_sales
from SALES a
inner join PRODUCTS b 
on A.product_id = b.product_id 
group by product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.

select products,stock_quantity from products
where stock_quantity < 10

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.

select p.product_name,s.quantity_sold   from sales s
inner JOIN products p 
on s.product_id = p.product_id  
where s.quantity_sold > 5


-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.

select 
c.first_name,
c.last_name,
p.product_name,
p.category
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
where p.category in ('Electronics','Appliances')
   

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.

select 
p.product_name,
sum(s.quantity_sold) product_sales 
from sales s 
inner join products p  
on s.product_id = p.product_id 
group by p.product_name

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.

select 
c.first_name,
c.last_name,
s.sale_date 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id   
where TO_CHAR(s.sale_date,'YYYY') = '2023'


-- 24. Write a query to find the customers with the highest total sales in 2023.

select 
c.first_name,
c.last_name,
sum(s.quantity_sold) highest_cust_sales  
from sales s 
inner join customers c 
on s.customer_id = c.customer_id   
where TO_CHAR(s.sale_date,'YYYY') = '2023'
group by c.first_name,
c.last_name 
order by 3 desc


-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.

select 
product_name,
highest_prod_sold 
from (
select 
p.product_name, 
MAX(p.price) highest_prod_sold
from sales s 
inner join products p  
on s.product_id = p.product_id 
group by p.product_name
)
where highest_prod_sold = (select MAX(price) highest_prod_price from products)


-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.

select 
COUNT(c.customer_id) cust_count_above_500 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
where p.price > 500

select * from sales

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.

select 
sum(s.quantity_sold) gold_memb_sales
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
where c.membership_status = 'Gold'

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).

select p.product_name from products p 
inner join inventory i
on p.product_id = i.product_id 
where i.stock_quantity < 10

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.

select * from (
select 
c.first_name,
c.last_name,
sum(s.quantity_sold) cust_quant
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
group by c.first_name,
c.last_name
) 
where cust_quant > 5

-- 30. Write a query to find the average quantity sold per product.

select 
p.product_name,
AVG(s.quantity_sold) AVG_QUANT 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
group by p.product_name

-- 31. Write a query to find the number of sales made in the month of December 2023.

select 
SUM(S.quantity_sold) quant_sold_Dec
from sales s    
where TO_CHAR(s.sale_date,'YYYYMM') = '202312'

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.

select 
c.first_name,
c.last_name,
SUM(s.total_amount) cust_total_amount
from sales s 
inner join customers c 
on s.customer_id = c.customer_id   
where TO_CHAR(s.sale_date,'YYYY') = '2023'
group by c.first_name,
c.last_name
order by 3 desc

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.

select 
p.product_name 
from sales s  
inner join products p  
on s.product_id = p.product_id 
where p.stock_quantity  < 5


-- 34. Write a query to find the total sales for each product and order the result by the highest sales.

select 
p.product_name,
sum(s.total_amount) prod_sales
from sales s  
inner join products p  
on s.product_id = p.product_id
group by p.product_name 
order by 2 desc

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select * from (
select 
c.first_name,
c.last_name,
c.registration_date,
s.sale_date,
s.sale_date - c.registration_date prd_7_days
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
) where prd_7_days >= 0 and prd_7_days <= 7

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.

select 
p.product_name,
p.price 
from sales s  
inner join products p  
on s.product_id = p.product_id
where p.price >= 100 and p.price <= 500

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.

select 
c.first_name,
c.last_name,
count(s.sale_id ) sales_per_cust
from sales s 
inner join customers c 
on s.customer_id = c.customer_id
group by c.first_name,
c.last_name

-- 38. Write a query to find the total quantity of products sold per customer.

select 
c.first_name,
c.last_name,
sum(s.quantity_sold) quant_per_cust
from sales s 
inner join customers c 
on s.customer_id = c.customer_id
group by c.first_name,
c.last_name

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.


select product_name,max_stock as max_min_stock  from (
select 
product_name,
MAX(stock_quantity) max_stock
from products 
group by product_name
)
where max_stock = (select MAX(stock_quantity) max_stock  from products)
union all 
select product_name,min_stock as max_min_stock  from (
select 
product_name,
MIN(stock_quantity) min_stock 
from products 
group by product_name
)
where min_stock = (select MIN(stock_quantity) min_stock  from products)


-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select 
p.product_name,
sum(s.total_amount) phone_sales 
from sales s  
inner join products p  
on s.product_id = p.product_id 
where lower(p.product_name) like '%phone%'
group by p.product_name



-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.

select
p.product_name, 
sum(s.total_amount) gold_memb_sales
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
where c.membership_status = 'Gold'
group by p.product_name

-- 42. Write a query to find the total sales of products by category.

select
p.category, 
sum(s.total_amount) sales_per_prod
from sales s   
inner join products p  
on s.product_id = p.product_id
group by p.category

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.

select
p.product_name, 
SUBSTR(s.sale_date::VARCHAR,1,4) SALE_YEAR,
SUBSTR(s.sale_date::VARCHAR,6,2) SALE_MONTH,
SUM(s.total_amount) total_sales
from sales s   
inner join products p  
on s.product_id = p.product_id
group by p.product_name, 
SUBSTR(s.sale_date::VARCHAR,1,4),
SUBSTR(s.sale_date::VARCHAR,6,2)

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.

select
p.product_name,
s.total_amount, 
i.stock_quantity 
from sales s   
inner join inventory i   
on s.product_id = i.product_id
inner join products p  
on s.product_id = p.product_id
where i.stock_quantity >0

-- 45. Write a query to find the top 5 customers who have made the highest purchases.

select 
c.first_name,
c.last_name,
sum(s.total_amount) 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
group by c.first_name,
c.last_name
order by 3 desc
limit 5


-- 46. Write a query to calculate the total number of unique products sold in 2023.

select 
COUNT(distinct s.product_id ) dist_prod
from sales s 
inner join customers c 
on s.customer_id = c.customer_id   
where TO_CHAR(s.sale_date,'YYYY') = '2023'

-- 47. Write a query to find the products that have not been sold in the last 6 months.

select 
p.product_name prod_not_sold_6_months,
s.sale_date 
from sales s  
inner join products p
on s.product_id = p.product_id 
where s.sale_date < (select(MAX(s.sale_date) - interval '6 months'):: DATE earliest_date from sales s) 



-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select 
p.product_name,
p.price,
sum(s.quantity_sold) total_quant
from sales s  
inner join products p
on s.product_id = p.product_id
where p.price >= 200 and p.price <= 800
group by p.product_name,
p.price

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select 
c.first_name,
c.last_name,
SUM(s.total_amount) cust_total_amount
from sales s 
inner join customers c 
on s.customer_id = c.customer_id   
where TO_CHAR(s.sale_date,'YYYY') = '2023'
group by c.first_name,
c.last_name
order by 3 desc
limit 5

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.

select 
p.product_name,
p.price 
from sales s   
inner join products p  
on s.product_id = p.product_id
where s.quantity_sold > 100 and p.price > 200

-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?

select 
first_name,
last_name
from sales s 
inner join customers c 
on s.customer_id = c.customer_id 
where total_amount > (select avg(total_amount) from sales)


-- 52. Which products are priced higher than the average price of all products?

select 
product_name
from products p  
where price > (select avg(price) from products)

-- 53. Which customers have never made a purchase?

select 
s.customer_id, 
c.first_name,
c.last_name
from sales s 
LEFT join customers c 
on s.customer_id = c.customer_id 
where s.customer_id not in (select customer_id from customers c2)

-- 54. Which products have never been sold?

select 
p.product_name 
from sales s   
left join products p  
on s.product_id = p.product_id
where s.product_id  not in (select product_id from products p2 )



-- 55. Which customer made the single most expensive purchase?

select 
c.first_name,
c.last_name,
s.total_amount 
from sales s 
INNER join customers c 
on s.customer_id = c.customer_id 
where total_amount = (select max(total_amount) from sales s )

-- 56. Which products have total sales greater than the average total sales across all products?

select 
p.product_name 
from sales s   
left join products p  
on s.product_id = p.product_id
where s.total_amount > (select avg(total_amount) from sales )

-- 57. Which customers registered earlier than the average registration date?

select 
c.first_name,
c.last_name 
from customers c  
where registration_date < (select (max(registration_date ) - ((max(registration_date) - min(registration_date)) / 2) ) :: DATE from customers )

-- 58. Which products have a price higher than the average price within their own category?
select 
a.product_name,
a.category,
a.price,
b.avg_price_cat 
from products a
join (
select category,avg_price_cat 
from (
select 
category,
AVG(price) avg_price_cat
from products
group by
category)) b
on a.category = b.category
where a.price > b.avg_price_cat 



-- 59. Which customers have spent more than the customer with ID = 10?
select 
c.first_name,
c.last_name,
total_amount
from sales s 
INNER join customers c 
on s.customer_id = c.customer_id
where total_amount > (select total_amount from sales where customer_id = 10)

-- 60. Which products have total quantity sold greater than the overall average quantity sold?

select 
p.product_name,
s.quantity_sold 
from sales s   
left join products p  
on s.product_id = p.product_id
where s.quantity_sold > (select avg(quantity_sold) from sales)


-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.

with total_spent as (
select 
c.first_name,
c.last_name,
sum(s.total_amount) total_amount
from sales s 
INNER join customers c 
on s.customer_id = c.customer_id
group by c.first_name,
c.last_name
order by 3 desc)
select * from total_spent 
limit 5


-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with quant_sold as (
select 
p.product_name,
sum(s.quantity_sold) quant_sold
from sales s   
left join products p  
on s.product_id = p.product_id
group by p.product_name 
order by 2 desc
)
select * from quant_sold 
limit 3

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.

with total_spent as (
select 
p.category,
sum(s.total_amount) total_amount
from sales s   
left join products p  
on s.product_id = p.product_id
group by p.category 
order by 2 desc
)
select * from total_spent 
limit 1

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.

with quant_sold as (
select 
c.first_name, 
c.last_name,
sum(s.quantity_sold) quantity_sold,
rank() over(order by sum(s.quantity_sold)) times_quant_sold
from sales s 
INNER join customers c 
on s.customer_id = c.customer_id
group by c.first_name, 
c.last_name)
select * from quant_sold 
where times_quant_sold > 1

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.

with quant_sold as (
select 
p.product_name,
sum(s.quantity_sold) quant_sold
from sales s   
left join products p  
on s.product_id = p.product_id
group by p.product_name),
avg_quant as (
select 
avg(s.quantity_sold) avg_quant_sold
from sales s 
)
select * from quant_sold 
where quant_sold > (select * from avg_quant)

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.

with cust_spending as (
select 
c.first_name,
c.last_name,
sum(s.total_amount) cust_spending
from sales s 
INNER join customers c 
on s.customer_id = c.customer_id
group by c.first_name,
c.last_name),
avg_spending as (
select 
avg(s.total_amount) avg_spending
from sales s 
)
select * from cust_spending 
where cust_spending > (select * from avg_spending)


-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.

with total_spent as (
select 
p.product_name,
sum(s.total_amount) total_amount
from sales s   
left join products p  
on s.product_id = p.product_id
group by p.product_name 
)
select * from total_spent
order by 2 desc

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.

with sales_for_month as (
select 
to_char(sale_date, 'MM') SALE_MONTH,
sum(total_amount) monthly_sales  
from sales
group by to_char(sale_date, 'MM')
)
select 
to_char(to_date(SALE_MONTH :: text, 'MM'),'month') sale_month,
monthly_sales
from sales_for_month 
order by 2 desc 
limit 1

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.

with prod_sales as (
select 
p.product_name,
sum(s.total_amount) prod_sales
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
group by p.product_name),
cust_buying as (
select 
p.product_name,
c.first_name,
c.last_name, 
sum(s.quantity_sold ) cust_buys
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
group by p.product_name,
c.first_name,
c.last_name 
)
select * from prod_sales 
where product_name in (select product_name from cust_buying where cust_buys>= 3)



-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.

with quant_sold as (
select 
p.product_name,
sum(s.quantity_sold) quant_sold
from sales s   
left join products p  
on s.product_id = p.product_id
group by p.product_name),
avg_quant as (
select 
avg(s.quantity_sold) avg_quant_sold
from sales s 
)
select * from quant_sold 
where quant_sold < (select * from avg_quant)


-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.

select 
c.first_name,
c.last_name,
s.total_amount,
rank() over(order by s.total_amount desc)
from sales s 
inner join customers c 
on s.customer_id = c.customer_id 

-- 72. Rank products based on total quantity sold.

select 
c.first_name,
c.last_name,
s.quantity_sold,
rank() over(order by s.quantity_sold desc)
from sales s 
inner join customers c 
on s.customer_id = c.customer_id 

-- 73. Identify the 3rd highest spending customer.

select * from (
select 
c.first_name,
c.last_name,
s.total_amount,
rank() over(order by s.total_amount desc) spend_rank
from sales s 
inner join customers c 
on s.customer_id = c.customer_id 
) 
where spend_rank = 3

-- 74. Identify the 2nd most expensive product.

select * from (
select 
p.product_name,
p.price,
rank() over(order by p.price desc) prod_price
from sales s   
left join products p  
on s.product_id = p.product_id
)
where prod_price = 2

-- 75. Show the ranking of products within each category based on price.
select 
p.product_name,
p.category, 
p.price,
rank() over(partition by p.category order by p.price desc) prod_price
from sales s   
left join products p  
on s.product_id = p.product_id

-- 76. Show the ranking of customers based on the number of purchases they made.

select 
c.first_name,
c.last_name,
sum(s.quantity_sold) cust_purchases,
rank() over(order by sum(s.quantity_sold) desc)
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
group by c.first_name,
c.last_name

-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT
s.sale_date,
sum(s.total_amount) daily_tot,
sum(sum(s.total_amount)) over(order by s.sale_date)
from sales s
group by s.sale_date 

-- 78. Show the previous sale amount for each sale ordered by sale_date.

SELECT
s.sale_date,
s.total_amount,
LAG(s.total_amount) over(order by s.sale_date) prev_sale
from sales s

-- 79. Show the next sale amount for each sale ordered by sale_date.

SELECT
s.sale_date,
s.total_amount,
LEAD(s.total_amount) over(order by s.sale_date) prev_sale
from sales s

-- 80. Divide customers into 4 groups based on total spending.

select 
c.first_name,
c.last_name,
sum(s.total_amount) cust_spend,
ntile(4) over(order by sum(s.total_amount)) cust_group
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
group by c.first_name,
c.last_name


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?

select 
c.first_name,
c.last_name,
p.category,
RANK() OVER(partition by c.first_name,c.last_name,p.category order by sum(s.quantity_sold ) DESC) CUST_SALES_PER_CAT,
sum(s.quantity_sold ) prod_sales
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id 
group by c.first_name,
c.last_name,
p.category

-- 82. Which customers purchased products within 7 days of registering?

select *
FROM(
select 
c.first_name,
c.last_name,
p.product_name, 
c.registration_date,
s.sale_date,
s.sale_date - c.registration_date sales_7_day
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p  
on s.product_id = p.product_id
)
where sales_7_day <= 7

-- 83. Which products have lower stock remaining than the average stock quantity?

select 
* 
from products  
where stock_quantity < (select AVG(p.stock_quantity) from products p) 


-- 84. Which customers purchased the same product more than once?
select 
first_name,
last_name,
product_name, 
prod_sales 
from (
select 
c.first_name,
c.last_name,
p.product_name, 
sum(s.quantity_sold) prod_sales,
dense_rank() over(order by sum(s.quantity_sold) asc) prod_rank
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p
on s.product_id = p.product_id
group by c.first_name,
c.last_name,
p.product_name
)
where prod_rank > 1

-- 85. Which product categories generated the highest total revenue?

select 
category, 
prod_sales from (
select 
p.product_name, 
p.category, 
sum(s.total_amount ) prod_sales
from sales s  
inner join products p
on s.product_id = p.product_id
group by 
p.product_name, 
p.category
order by 3 desc
) 
limit 3

-- 86. Which products are among the top 3 most sold products?

select 
product_name, 
prod_sales from (
select 
p.product_name, 
p.category, 
sum(s.total_amount ) prod_sales
from sales s  
inner join products p
on s.product_id = p.product_id
group by 
p.product_name, 
p.category
order by 3 desc
) 
limit 3

-- 87. Which customers purchased the most expensive product?

select 
c.first_name,
c.last_name,
p.product_name 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p
on s.product_id = p.product_id
where p.product_id in ( 
select product_id   from products 
where price = (select max(price) from products))

-- 88. Which products were purchased by the highest number of unique customers?

select 
c.customer_id,
c.first_name,
c.last_name,
p.product_name,
quantity_sold
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p
on s.product_id = p.product_id
where sale_id in (
select 
sale_id
from SALES 
where quantity_sold in (
select MAX(quantity_sold) MAX_QUANT from SALES))

-- 89. Which customers made purchases above the average sale amount?

select 
c.first_name,
c.last_name,
s.total_amount 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
where s.total_amount > (select AVG(total_amount) from sales)


-- 90. Which customers purchased more products than the average quantity purchased per customer?

select 
c.first_name,
c.last_name,
s.total_amount 
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
where s.quantity_sold > (select AVG(quantity_sold ) from sales)

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?

select 
*
from (
select
c.first_name,
c.last_name,
SUM(s.total_amount) total_spend,
ntile(10) over(order by SUM(s.total_amount) DESC) percentile
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p
on s.product_id = p.product_id
group by c.first_name,
c.last_name
)
where percentile = 1

-- 92. Which products contribute to the top 50% of total revenue?

with RUN_TOT as (
select
p.product_name, 
SUM(s.total_amount) total_spend,
sum(sum(s.total_amount)) over(order by SUM(s.total_amount) desc) running_total
from sales s 
inner join customers c 
on s.customer_id = c.customer_id  
inner join products p
on s.product_id = p.product_id
group by p.product_name
),
HALF_REV_AMT as (
select 
sum(total_amount) / 2 as half_rev 
from sales)
select 
*
from RUN_TOT 
where running_total <= (select half_rev from HALF_REV_AMT)



-- 93. Which customers made purchases in consecutive months?


select
c.customer_id, 
c.first_name,
c.last_name,
to_char(sale_date, 'MM') SALE_MONTH,
sum(total_amount) monthly_sales,
LEAD(sum(total_amount)) OVER(partition by c.customer_id order by to_char(sale_date, 'MM')) Repeat_Monthly_Cust
from sales s 
inner join customers c  
on s.customer_id = c.customer_id 
group by to_char(sale_date, 'MM'),
c.first_name,
c.last_name,
c.customer_id

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

select * from (
select product_name,stock_quantity,quantity_sold,stock_perc, (100 - stock_perc) as largest_diff_perc  from (
select
p.product_name,
p.stock_quantity,
s.quantity_sold,
round(sum((p.stock_quantity - s.quantity_sold)) / p.stock_quantity::dec * 100,1) stock_perc
from sales s 
inner join products p
on s.product_id = p.product_id
group by p.product_name,
p.stock_quantity,
s.quantity_sold
order by 4 asc
)
)
where largest_diff_perc >= 2

-- 95. Which customers have spending above the average spending of their membership tier?

select * from (
select
c.first_name,
c.last_name,
c.membership_status,
s.total_amount,
ntile(10) over(partition by  c.membership_status order by s.total_amount desc ) cust_memb
from sales s 
inner join customers c  
on s.customer_id = c.customer_id
)
where cust_memb <= 2 


-- 96. Which products have higher sales than the average sales within their category?

select
p.product_name,
s.quantity_sold
from sales s 
inner join products p
on s.product_id = p.product_id
where s.quantity_sold > (select AVG(s.quantity_sold ) avg_sales from sales s) 

-- 97. Which customer made the largest single purchase relative to their total spending?

select * from (
select
c.first_name,
c.last_name, 
SUM(s.total_amount) total_amount,
RANK() OVER(order by SUM(s.total_amount) DESC)
from sales s 
inner join customers c
on s.customer_id  = c.customer_id
group by c.first_name,
c.last_name
order by 4 asc
)
where rank = 1

-- 98. Which products rank among the top 3 most sold products within each category?

select 
category, 
prod_sales from (
select 
p.product_name, 
p.category, 
sum(s.total_amount ) prod_sales
from sales s  
inner join products p
on s.product_id = p.product_id
group by 
p.product_name, 
p.category
order by 3 desc
) 
limit 3

-- 99. Which customers are tied for the highest total spending?

select * from (
select
c.first_name,
c.last_name,
s.total_amount,
RANK() over(order by  s.total_amount desc ) cust_spend
from sales s 
inner join customers c  
on s.customer_id = c.customer_id
)
where cust_spend = 1

-- 100. Which products generated sales every year present in the dataset?

select
p.product_name , 
s.total_amount yearly_sales,
to_char(sale_date, 'YYYY') SALE_YEAR,
LEAD(s.total_amount) OVER(partition by p.product_name ) Repeat_yearly_prod_sales
from sales s 
inner join products p   
on s.product_id = p.product_id  

