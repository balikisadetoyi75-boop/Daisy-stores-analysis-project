

CREATE DATABASE DAISY_STORES;
USE DAISY_STORES;



--PRODUCT TABLE 
CREATE TABLE PRODUCT(
	PRODUCT_ID INT IDENTITY(1,1) PRIMARY KEY,
	PRODUCT_NAME VARCHAR(100) NOT NULL,
	CATEGORY VARCHAR(100) NOT NULL);


	--ORDERS TABLE
	CREATE TABLE ORDERS(
		ORDER_ID INT IDENTITY(1,1) PRIMARY KEY,
		CUSTOMER_ID INT NOT NULL,
		ORDER_DATE DATE NOT NULL,
		PAYMENT_METHOD VARCHAR(50),
		SHIPPING_ADDRESS VARCHAR(100) NOT NULL,
		ORDER_STATUS VARCHAR(50), 
		SHIPPING_COST DECIMAL(10,2)  )


		---ORDER_ITEMS TABLE
		
		CREATE TABLE ORDER_ITEMS(
		ORDER_ID INT NOT NULL,
		PRODUCT_ID INT NOT NULL,
		QUANTITY INT NOT NULL,
		PRICE DECIMAL(10,2) NOT NULL,
		PRIMARY KEY(ORDER_ID, PRODUCT_ID))
		
		
	INSERT INTO PRODUCT ( PRODUCT_NAME, CATEGORY)
	VALUES 
	('Laptop','Electronics'),
	('Wireless Mouse','Electronics'),
	('Bluetooth Speaker','Electronics'),
	('Hoodie','Clothing'),
	('Face Cream','Beauty'),
	('Dumbbells','Sports'),
	('T?Shirt','Clothing'),
	('Shampoo','Beauty'),
	('Blender','Home & Kitchen'),
	('Air Fryer','Home & Kitchen'),
	('Mobile phone','Electronics'),
	('Yoga Mat','Sports'),
	('deodorant','Beauty'),
	('Toaster','Home & Kitchen'),
	('Duvet','Home & Kitchen'),
	('Body wash','Beauty');


	INSERT INTO ORDERS
	(CUSTOMER_ID, ORDER_DATE,PAYMENT_METHOD, SHIPPING_ADDRESS, ORDER_STATUS,SHIPPING_COST)
	VALUES 
	(1, '2024-08-05', 'Card', '12 King St, Bath', 'Delivered', 4.99),
(3, '2024-08-12', 'PayPal', '8 River Rd, Bristol', 'Delivered', 3.50),
(2, '2024-09-01', 'Card', '22 Hill Rd, London', 'Cancelled', 0.00),
(4, '2024-09-15', 'Card', '10 Park Ave, Bath', 'Delivered', 4.99),
(1, '2024-10-02', 'Bank Transfer', '12 King St, Bath', 'Delivered', 4.99),
(5, '2024-10-10', 'Card', '5 Green Ln, Swindon', 'Returned', 0.00),
(6, '2024-10-22', 'PayPal', '19 Oak St, Bristol', 'Delivered', 3.50),
(2, '2024-11-01', 'Card', '22 Hill Rd, London', 'Delivered', 4.99),
(7, '2024-11-05', 'Card', '33 West Rd, Bath', 'Delivered', 4.99),
(3, '2024-11-12', 'PayPal', '8 River Rd, Bristol', 'Processing', 3.50),
(1, '2024-11-20', 'Card', '12 King St, Bath', 'Delivered', 4.99),
(8, '2024-12-01', 'Card', '44 East St, Cardiff', 'Delivered', 5.50),
(4, '2024-12-05', 'PayPal', '10 Park Ave, Bath', 'Delivered', 4.99),
(6, '2024-12-10', 'Card', '19 Oak St, Bristol', 'Delivered', 3.50),
(2, '2024-12-18', 'Card', '22 Hill Rd, London', 'Delivered', 4.99),
(5, '2024-12-22', 'PayPal', '5 Green Ln, Swindon', 'Delivered', 3.50),
(7, '2025-01-03', 'Card', '33 West Rd, Bath', 'Delivered', 4.99),
(1, '2025-01-10', 'Card', '12 King St, Bath', 'Delivered', 4.99),
(3, '2025-01-15', 'PayPal', '8 River Rd, Bristol', 'Delivered', 3.50),
(8, '2025-01-20', 'Card', '44 East St, Cardiff', 'Delivered', 5.50),
(4, '2025-01-25', 'Card', '10 Park Ave, Bath', 'Delivered', 4.99),
(6, '2025-01-28', 'PayPal', '19 Oak St, Bristol', 'Delivered', 3.50),
(2, '2025-01-30', 'Card', '22 Hill Rd, London', 'Delivered', 4.99),
(7, '2025-02-01', 'Card', '33 West Rd, Bath', 'Delivered', 4.99),
(5, '2025-02-01', 'PayPal', '5 Green Ln, Swindon', 'Delivered', 3.50);

	


INSERT INTO ORDER_ITEMS (ORDER_ID, PRODUCT_ID, QUANTITY, PRICE)
VALUES
(1, 2, 1, 25.00),
(1, 8, 2, 12.50),
(2, 1, 1, 899.00),
(2, 3, 1, 49.99),
(3, 4, 1, 35.00),
(4, 5, 1, 79.99),
(4, 6, 2, 15.00),
(5, 1, 1, 899.00),
(5, 7, 1, 35.00),
(6, 10, 1, 20.00),
(7, 11, 1, 45.00),
(7, 9, 2, 8.99),
(8, 2, 1, 25.00),
(8, 14, 1, 60.00),
(9, 3, 1, 49.99),
(9, 12, 1, 55.00),
(10, 8, 1, 12.50),
(10, 9, 1, 8.99),
(11, 1, 1, 899.00),
(11, 6, 3, 15.00),
(12, 4, 1, 35.00),
(12, 5, 1, 79.99),
(13, 13, 1, 150.00),
(13, 2, 1, 25.00),
(14, 7, 1, 35.00),
(14, 10, 1, 20.00),
(15, 1, 1, 899.00),
(15, 8, 1, 12.50),
(16, 11, 2, 45.00),
(17, 3, 1, 49.99),
(17, 6, 1, 15.00),
(18, 12, 1, 55.00),
(18, 14, 1, 60.00),
(19, 9, 2, 8.99),
(19, 10, 1, 20.00),
(20, 5, 1, 79.99),
(20, 7, 1, 35.00),
(21, 1, 1, 899.00),
(21, 3, 1, 49.99),
(22, 4, 1, 35.00),
(22, 8, 1, 12.50),
(23, 2, 1, 25.00),
(23, 11, 1, 45.00),
(24, 6, 2, 15.00),
(24, 9, 1, 8.99),
(25, 13, 1, 150.00),
(25, 15, 1, 30.00);