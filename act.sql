CREATE DATABASE tp_food_corp;

USE tp_food_corp;

# TABLE 1: CUSTOMER AND ADDRESS
CREATE TABLE customers(
	customer_id INT,
    customer_name VARCHAR(65), 	
    contact CHAR(50)
);

INSERT INTO customers
VALUES
	(1, 'Juan dela Cruz', '+63 912 345 6789'),
	(2, 'Maria Santos', '+63 923 456 7890'),
	(3, 'John Doe', '+1 555 123 4567'),
	(4, 'Jane Smith', '+44 7700 900123'),
	(5, 'Hiroshi Tanaka', '+81 80 1234 5678'),
	(6, 'Pierre Dupont', '+33 6 12 34 56 78'),
	(7, 'Ahmed Ali', '+971 50 987 6543'),
	(8, 'Carlos Garcia', '+34 612 345 678'),
	(9, 'Emily Johnson', '+61 412 345 678'),
	(10, 'Olga Petrov', '+7 911 234 5678'),
	(11, 'Diego Ramirez', '+54 9 11 2345 6789'),
	(12, 'Li Wei', '+86 139 1234 5678'),
	(13, 'Rajesh Kumar', '+91 98765 43210'),
	(14, 'Fatima Hassan', '+20 100 123 4567'),
	(15, 'Anna Müller', '+49 151 23456789'),
	(16, 'Jacob Williams', '+1 647 123 4567'),
	(17, 'Sofia Rossi', '+39 320 123 4567'),
	(18, 'Lucas Silva', '+55 11 91234 5678'),
	(19, 'Joon Park', '+82 10 1234 5678'),
	(20, 'Henry Thompson','+27 82 123 4567');

SELECT * FROM customers;


#ADDRESS
CREATE TABLE address(
	customer_id INT,
	city VARCHAR(65),
    country VARCHAR(65)
);

INSERT INTO address
VALUES
	(1,'Manila', 'Philippines'),
	(2,'Cebu City', 'Philippines'),
	(3,'New York', 'USA'),
	(4,'London', 'UK'),
	(5,'Tokyo', 'Japan'),
	(6,'Paris', 'France'),
	(7,'Dubai', 'UAE'),
	(8,'Madrid', 'Spain'),
	(9,'Sydney', 'Australia'),
	(10,'Moscow', 'Russia'),
	(11,'Buenos Aires', 'Argentina'),
	(12,'Beijing', 'China'),
	(13,'Mumbai', 'India'),
	(14,'Cairo', 'Egypt'),
	(15,'Berlin', 'Germany'),
	(16,'Toronto', 'Canada'),
	(17,'Rome', 'Italy'),
	(18,'São Paulo', 'Brazil'),
	(19,'Seoul', 'South Korea'),
	(20,'Cape Town', 'South Africa');

SELECT * FROM address;


# TABLE 2: PAYMENT
CREATE TABLE payment(
	payment_no INT,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO payment
VALUES
	(1, 1, '1500.00'),
	(2, 3, '2750.50'),
	(3, 5, '430.75'),
	(4, 2, '3120.00'),
	(5, 7, '500.25'),
	(6, 8, '1899.99'),
	(7, 10, '250.50'),
	(8, 4, '3450.00'),
	(9, 6, '760.80'),
	(10, 9, '1345.00'),
	(11, 12, '2100.99'),
	(12, 14, '675.20'),
	(13, 11, '980.00'),
	(14, 16, '4500.50'),
	(15, 15, '875.90'),
	(16, 18, '1110.25'),
	(17, 13, '2999.75'),
	(18, 17, '555.00'),
	(19, 19, '720.30'),
	(20, 20, '3850.80');

SELECT * FROM payment;

# TABLE 3: CASHIER
CREATE TABLE cashier(
cashier_id INT,
cashier_name VARCHAR(65)
);

INSERT INTO cashier
VALUES
	(1, 'Amanda Reyes'),
	(2, 'Michael Torres'),
	(3, 'Sophia Martinez'),
	(4, 'Daniel Cruz'),
	(5, 'Emily Johnson'),
	(6, 'Kevin Garcia'),
	(7, 'Jessica Lee'),
	(8, 'David Brown'),
	(9, 'Olivia Perez'),
	(10, 'Christopher White'),
	(11, 'Natalie Adams'),
	(12, 'Ryan Scott'),
	(13, 'Isabella Lewis'),
	(14, 'Justin Hernandez'),
	(15, 'Charlotte Thompson'),
	(16, 'Benjamin Walker'),
	(17, 'Mia Robinson'),
	(18, 'Alexander Hall'),
	(19, 'Grace Allen'),
	(20, 'Ethan Carter');

SELECT * FROM cashier;

#TABLE 4: RECEIPT
CREATE TABLE receipt(
cashier_id INT,
receipt_no INT,
receipt_date DATE,
receipt_time TIME,
food_id INT,
payment_no INT
);

INSERT INTO receipt
VALUES
	(1, 1001, '2025-04-10', '10:30:00', 5, 1),
	(2, 1002, '2025-04-11', '12:15:00', 3, 2),
	(3, 1003, '2025-04-12', '14:45:00', 7, 3),
	(4, 1004, '2025-04-13', '18:00:00', 2, 4),
	(5, 1005, '2025-04-14', '09:20:00', 6, 5),
	(6, 1006, '2025-04-15', '20:05:00', 4, 6),
	(7, 1007, '2025-04-16', '08:50:00', 1, 7),
	(8, 1008, '2025-04-17', '22:30:00', 8, 8),
	(9, 1009, '2025-04-18', '11:40:00', 10, 9),
	(10, 1010, '2025-04-19', '15:10:00', 9, 10),
	(11, 1011, '2025-04-20', '17:55:00', 12, 11),
	(12, 1012, '2025-04-21', '07:25:00', 14, 12),
	(13, 1013, '2025-04-22', '23:45:00', 11, 13),
	(14, 1014, '2025-04-23', '13:35:00', 16, 14),
	(15, 1015, '2025-04-24', '19:15:00', 15, 15),
	(16, 1016, '2025-04-25', '10:00:00', 18, 16),
	(17, 1017, '2025-04-26', '21:40:00', 13, 17),
	(18, 1018, '2025-04-27', '16:20:00', 20, 18),
	(19, 1019, '2025-04-28', '09:55:00', 17, 19),
	(20, 1020, '2025-04-29', '14:05:00', 19, 20);
    
SELECT * FROM receipt;

# TABLE 5: FOOD
CREATE TABLE food(
food_id INT,
food_name VARCHAR(99),
food_type INT,
food_price	DECIMAL(10,2)
);

INSERT INTO food
VALUES
	(1, 'Cheeseburger', 1, '150.00'),
	(2, 'Margherita Pizza', 2, '350.00'),
	(3, 'Spaghetti Carbonara', 3, '250.00'),
	(4, 'Grilled Salmon', 4, '500.00'),
	(5, 'Caesar Salad', 5, '200.00'),
	(6, 'Chicken Tikka Masala', 6, '400.00'),
	(7, 'Miso Soup', 7, '120.00'),
	(8, 'Sushi Platter', 8, '600.00'),
	(9, 'Steak and Fries', 9, '750.00'),
	(10, 'Vegetable Stir-fry', 10, '180.00'),
	(11, 'French Toast', 11, '220.00'),
	(12, 'Tacos al Pastor', 12, '270.00'),
	(13, 'Butter Chicken', 13, '420.00'),
	(14, 'Chocolate Cake', 14, '300.00'),
	(15, 'Mango Smoothie', 15, '180.00'),
	(16, 'Pancakes with Syrup', 16, '250.00'),
	(17, 'Seafood Paella', 17, '550.00'),
	(18, 'BBQ Pork Ribs', 18, '680.00'),
	(19, 'Ramen Bowl', 19, '320.00'),
	(20, 'Ice Cream Sundae', 20, '230.00');

SELECT * FROM food;

# TABLE 6: FOOD TYPE
CREATE TABLE food_type(
food_type INT,
food_class VARCHAR(99)
);

INSERT INTO food_type
VALUES
	(1, 'Burger'),
	(2, 'Pizza'),
	(3, 'Pasta'),
	(4, 'Seafood'),
	(5, 'Salad'),
	(6, 'Chicken'),
	(7, 'Soup'),
	(8, 'Seafood'),
	(9, 'Steak'),
	(10, 'Vegetable'),
	(11, 'Bread'),
	(12, 'Appetizer'),
	(13, 'Chicken'),
	(14, 'Desserts'),
	(15, 'Drinks'),
	(16, 'Pastry'),
	(17, 'Seafood'),
	(18, 'Meat'),
	(19, 'Noodles'),
	(20, 'Dessert');
    
SELECT * FROM food_type;

# DROP TABLES
DROP TABLE customers;
DROP TABLE payment;
DROP TABLE cashier;
DROP TABLE receipt;
DROP TABLE food;
DROP TABLE food_type;


# JOIN TABLES

# 1. INNER JOIN : Combine the table of customer correspond to their order and food price
SELECT 
    c.customer_name AS Customers,
    f.food_name AS "Food Ordered",
    f.food_price AS "Food Price"
FROM customers AS c
INNER JOIN payment AS p ON c.customer_id = p.customer_id
INNER JOIN receipt AS r ON p.payment_no = r.payment_no
INNER JOIN food AS f ON r.food_id = f.food_id;


# 2. LEFT JOIN : List of Customer with their order
SELECT 
    c.customer_name AS "Customers",
    r.receipt_date AS Date,
    r.receipt_time AS Time,
    f.food_name AS "Food Ordered",
    f.food_price AS Amount
FROM receipt AS r
INNER JOIN food AS f ON r.food_id = f.food_id
INNER JOIN payment AS p ON r.payment_no = p.payment_no
INNER JOIN customers AS c ON p.customer_id = c.customer_id;


# 3. RIGHT JOIN: List of information about the customer
SELECT
    c.customer_id AS "Customer ID",
    c.customer_name AS "Customer Name",
    c.contact AS Contact,
    a.city AS City,
    a.country AS Country
FROM
    customers c
RIGHT JOIN
    address a ON c.customer_id = a.customer_id;


# 4. USING UNION : Lists of Customers and Cashiers
SELECT customer_name AS item_name, 'Customer' AS item_type FROM customers
UNION
SELECT cashier_name, 'Cashier' FROM cashier;


# 5. USING GROUP BY : Count the number of food ordered based on food class
SELECT
    ft.food_class,
    COUNT(f.food_id) AS number_of_items
FROM
    food f
JOIN
    food_type ft ON f.food_type = ft.food_type
GROUP BY
    ft.food_class;
