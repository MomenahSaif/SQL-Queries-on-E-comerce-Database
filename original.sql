create Database ecommerce

use ecommerce

create Table Sellers
(
   S_name varchar(255),
   S_phoneno numeric(11),
   S_id numeric(2),
   Primary key(S_id));

-- Insertion 1
INSERT INTO Sellers VALUES
 ('John Doe', 12345678901, 21)
 
-- Insertion 2
INSERT INTO Sellers VALUES
 ('Jane Smith', 23456789012, 22);

-- Insertion 3
INSERT INTO Sellers VALUES
 ('Mike Johnson', 34567890123, 23);

-- Insertion 4
INSERT INTO Sellers VALUES
 ('Emily Brown', 45678901234, 24);

-- Insertion 5
INSERT INTO Sellers VALUES
 ('David Wilson', 56789012345, 25);

-- Insertion 6
INSERT INTO Sellers VALUES
 ('Sarah Davis', 67890123456, 26);

-- Insertion 7
INSERT INTO Sellers VALUES
 ('Robert Miller', 78901234567, 27);

-- Insertion 8
INSERT INTO Sellers VALUES
 ('Karen Taylor', 89012345678, 28);

-- Insertion 9
INSERT INTO Sellers VALUES
 ('Michael Clark', 90123456789, 29);

-- Insertion 10
INSERT INTO Sellers VALUES
 ('Lisa Lee', 12345678901, 10);

-- Insertion 11
INSERT INTO Sellers VALUES
 ('Andrew White', 23456789012, 11);

-- Insertion 12
INSERT INTO Sellers VALUES
 ('Jessica Hall', 34567890123, 12);

-- Insertion 13
INSERT INTO Sellers VALUES
 ('Matthew Green', 45678901234, 13);

-- Insertion 14
INSERT INTO Sellers VALUES
 ('Olivia Harris', 56789012345, 14);

-- Insertion 15
INSERT INTO Sellers VALUES
 ('Christopher Martin', 67890123456, 15);

-- Insertion 16
INSERT INTO Sellers VALUES
 ('Ava Jackson', 78901234567, 16);

-- Insertion 17
INSERT INTO Sellers VALUES
 ('Daniel Moore', 89012345678, 17);

-- Insertion 18
INSERT INTO Sellers VALUES
 ('Sophia Hall', 90123456789, 18);

-- Insertion 19
INSERT INTO Sellers VALUES
 ('William Wilson', 12345678901, 19);

-- Insertion 20
INSERT INTO Sellers VALUES
 ('Mia Davis', 23456789012, 20);


 create Table Product
 (
   P_name varchar(255),
   Category varchar(20),
   P_price numeric,
   PR_id numeric(2),
   s_id numeric(2),
   Primary key(PR_id),
   Foreign key (s_id) References Sellers(S_id) );

   -- Insertion 1
INSERT INTO Product VALUES 
('Widget A', 'Electronic', 10 , 30, 21);

-- Insertion 2
INSERT INTO Product VALUES
 ('Gadget B', 'Electronic', 29, 31 , 22);

-- Insertion 3
INSERT INTO Product VALUES
 ('Tool C', 'Electronic', 19, 32 , 23);

-- Insertion 4
INSERT INTO Product VALUES
 ('Toy D', 'Toy', 84, 33 , 24);

-- Insertion 5
INSERT INTO Product VALUES
 ('Appliance E', 'Electronic', 150, 34, 25);

-- Insertion 6
INSERT INTO Product VALUES
 ('Clothing F', 'Clothing', 39, 35 , 26);

-- Insertion 7
INSERT INTO Product VALUES
 ('Electronics G', 'Electronic', 800, 36 , 27);

-- Insertion 8
INSERT INTO Product VALUES
 ('Furniture H', 'Furniture', 249, 37 , 28);

-- Insertion 9
INSERT INTO Product VALUES
 ('Book I', 'Book', 12, 38 , 29);

-- Insertion 10
INSERT INTO Product VALUES
 ('Accessory J', 'Clothing', 15 , 39 , 10);

-- Insertion 11
INSERT INTO Product VALUES
 ('Kitchenware K', 'Electronic', 50, 40 , 11);

-- Insertion 12
INSERT INTO Product VALUES
 ('Outdoor L', 'Furniture', 79 , 41 , 12);

-- Insertion 13
INSERT INTO Product VALUES
 ('Health M', 'Health', 24 , 42 , 13);

-- Insertion 14
INSERT INTO Product VALUES
 ('Jewelry N', 'Jewelry', 59, 43 , 14);

-- Insertion 15
INSERT INTO Product VALUES
 ('Car O', 'Toy', 1600, 44 , 15);

-- Insertion 16
INSERT INTO Product VALUES
 ('Tool P', 'Toy', 13, 45, 16);

-- Insertion 17
INSERT INTO Product VALUES
 ('Toy Q', 'Toy', 8, 46, 17);

-- Insertion 18
INSERT INTO Product VALUES
 ('Home R', 'Furniture', 39, 47, 18);

-- Insertion 19
INSERT INTO Product VALUES
 ('Sporting Goods S', 'Toy', 29, 48, 19);

-- Insertion 20
INSERT INTO Product VALUES
 ('Beauty T', 'Jewelry', 14, 49 ,20);


create Table Customers
(
  C_name varchar(255),
  C_phoneno numeric(11),
  C_id numeric(2),
  Primary key(C_id) );

-- Insertion 1
INSERT INTO Customers VALUES
 ('Alice Johnson', 12345678901, 50);

-- Insertion 2
INSERT INTO Customers VALUES
 ('Bob Smith', 23456789012, 51);

-- Insertion 3
INSERT INTO Customers VALUES
 ('Charlie Brown', 34567890123, 52);

-- Insertion 4
INSERT INTO Customers VALUES
 ('David Wilson', 45678901234, 53);

-- Insertion 5
INSERT INTO Customers VALUES
 ('Emily Davis', 56789012345, 54);

-- Insertion 6
INSERT INTO Customers VALUES
 ('Frank White', 67890123456, 55);

-- Insertion 7
INSERT INTO Customers VALUES
 ('Grace Martin', 78901234567, 56);

-- Insertion 8
INSERT INTO Customers VALUES
 ('Hannah Taylor', 89012345678, 57);

-- Insertion 9
INSERT INTO Customers VALUES
 ('Isaac Clark', 90123456789, 58);

-- Insertion 10
INSERT INTO Customers VALUES
 ('Jack Moore', 12345678910, 59);

-- Insertion 11
INSERT INTO Customers VALUES
 ('Katie Hall', 23456789021, 60);

-- Insertion 12
INSERT INTO Customers VALUES
 ('Liam Green', 34567890132, 61);

-- Insertion 13
INSERT INTO Customers VALUES
 ('Mia Jackson', 45678901243, 62);

-- Insertion 14
INSERT INTO Customers VALUES
 ('Noah Brown', 56789012354, 63);

-- Insertion 15
INSERT INTO Customers VALUES
 ('Olivia Martin', 67890123465, 64);

-- Insertion 16
INSERT INTO Customers VALUES
 ('Peter White', 78901234576, 65);

-- Insertion 17
INSERT INTO Customers VALUES
 ('Quinn Davis', 89012345687, 66);

-- Insertion 18
INSERT INTO Customers VALUES
 ('Riley Clark', 90123456798, 67);

-- Insertion 19
INSERT INTO Customers VALUES
 ('Sophia Taylor', 12345678999, 68);

-- Insertion 20
INSERT INTO Customers VALUES
 ('Thomas Moore', 23456789000, 69);



 create Table Orders
 (
    O_no numeric(3),
	O_totalamount numeric,
	O_creationtimestamp datetime,
	O_id numeric(2),
	c_id numeric(2),
	Primary key(O_id),
	Foreign key (c_id) References Customers(C_id) );

	-- Insertion 1
INSERT INTO Orders VALUES
 (101, 45.99, '2023-10-21 09:15:00', 91, 51);

-- Insertion 2
INSERT INTO Orders VALUES
 (102, 78.50, '2023-10-22 10:30:00', 71, 51);

-- Insertion 3
INSERT INTO Orders VALUES
 (103, 29.95, '2023-10-22 10:31:00', 98, 51);

-- Insertion 4
INSERT INTO Orders VALUES
 (104, 12.99, '2023-10-24 12:00:00', 93, 51);

-- Insertion 5
INSERT INTO Orders VALUES
 (105, 189.99, '2023-10-25 13:15:00', 72, 51);
 INSERT INTO Orders VALUES
 (105, 189.99, '2023-10-25 13:15:00', 73, 51);
INSERT INTO Orders VALUES
 (105, 189.99, '2023-10-25 13:15:00', 74, 51);

-- Insertion 6
INSERT INTO Orders VALUES
 (106, 65.00, '2023-10-26 14:30:00', 75, 55);

-- Insertion 7
INSERT INTO Orders VALUES
 (107, 799.99, '2023-10-27 15:45:00', 76, 56);

-- Insertion 8
INSERT INTO Orders VALUES
 (108, 249.99, '2023-10-28 16:00:00', 77, 57);

-- Insertion 9
INSERT INTO Orders VALUES
 (109, 34.95, '2023-09-21 17:15:00', 78, 58);

-- Insertion 10
INSERT INTO Orders VALUES
 (110, 5.99, '2023-09-22 18:30:00', 79, 59);

-- Insertion 11
INSERT INTO Orders VALUES
 (111, 49.99, '2023-09-23 19:45:00', 80, 60);

-- Insertion 12
INSERT INTO Orders VALUES
 (112, 79.95, '2023-09-24 20:00:00', 81, 61);

-- Insertion 13
INSERT INTO Orders VALUES
 (113, 9.99, '2023-09-25 21:15:00', 82, 62);

-- Insertion 14
INSERT INTO Orders VALUES
 (114, 59.99, '2023-09-26 22:30:00', 83, 63);

-- Insertion 15
INSERT INTO Orders VALUES
 (115, 15999.99, '2023-07-21 23:45:00', 84, 64);

-- Insertion 16
INSERT INTO Orders VALUES
 (116, 12.99, '2023-09-27 00:00:00', 85, 65);

-- Insertion 17
INSERT INTO Orders VALUES
 (117, 7.99, '2023-09-28 01:15:00', 86, 66);

-- Insertion 18
INSERT INTO Orders VALUES
 (118, 39.95, '2023-09-09 02:30:00', 87, 67);

-- Insertion 19
INSERT INTO Orders VALUES
 (119, 29.99, '2023-09-19 03:45:00', 88, 68);

-- Insertion 20
INSERT INTO Orders VALUES
 (120, 14.99, '2023-09-17 04:00:00', 89, 69);

 

 create Table Orderitems
 (
    Oi_quantity numeric,
	Oi_unitprice numeric,
	Oi_id numeric(3),
	o_id numeric(2),
	product_id numeric(2),
	Primary key(Oi_id),
	Foreign key(o_id) References Orders(O_id),
	Foreign key(product_id) References Product(PR_id) );

INSERT INTO ORDERITEMS VALUES(1,50,151,93,38)
INSERT INTO ORDERITEMS VALUES(1,50,152,93,35)
INSERT INTO ORDERITEMS VALUES(1,50,153,93,30)
INSERT INTO ORDERITEMS VALUES(1,50,154,93,37)
INSERT INTO ORDERITEMS VALUES(1,50,155,93,42)
INSERT INTO ORDERITEMS VALUES(1,50,156,93,43)
INSERT INTO ORDERITEMS VALUES(1,50,157,93,45)

	
	-- Insert 1
INSERT INTO Orderitems VALUES
 (5, 10.99, 131, 70, 30);

-- Insert 2
INSERT INTO Orderitems VALUES
(6, 7.49, 132, 71, 31);

-- Insert 3
INSERT INTO Orderitems VALUES
 (7, 19.99, 133, 72, 32);

-- Insert 4
INSERT INTO Orderitems VALUES
 (8, 5.99, 134, 73, 33);

-- Insert 5
INSERT INTO Orderitems VALUES
 (4, 12.99, 135, 74, 34);

-- Insert 6
INSERT INTO Orderitems VALUES
 (2, 9.99, 136, 75, 35);

-- Insert 7
INSERT INTO Orderitems VALUES
 (3, 8.49,137, 76, 36);

-- Insert 8
INSERT INTO Orderitems VALUES
 (6, 14.99, 138, 77, 37);

-- Insert 9
INSERT INTO Orderitems VALUES
 (1, 6.99, 139, 78, 38);

-- Insert 10
INSERT INTO Orderitems VALUES
 (2, 11.49, 140, 79, 39);

-- Insert 11
INSERT INTO Orderitems VALUES
 (5, 7.99, 141, 80, 40);

-- Insert 12
INSERT INTO Orderitems VALUES
 (4, 18.99, 142, 81, 41);

-- Insert 13
INSERT INTO Orderitems VALUES
 (3, 9.49, 143, 82, 42);

-- Insert 14
INSERT INTO Orderitems VALUES
 (2, 13.99, 144, 83, 43);

-- Insert 15
INSERT INTO Orderitems VALUES
 (6, 6.99, 145, 84, 44);

-- Insert 16
INSERT INTO Orderitems VALUES
 (4, 15.49, 146, 85, 45);

-- Insert 17
INSERT INTO Orderitems VALUES
 (2, 8.99, 147, 86, 46);

-- Insert 18
INSERT INTO Orderitems VALUES
 (1, 11.99, 148, 87, 47);

-- Insert 19
INSERT INTO Orderitems VALUES
 (4, 14.99, 149, 88, 48);

-- Insert 20
INSERT INTO Orderitems VALUES
 (3, 10.49, 150, 89, 49);


 create TABLE Carts 
 (
    Cart_id numeric(3),
    c_id numeric(2),
    Primary key(Cart_id),
    Foreign key (c_id) References Customers(C_id) );

-- Insert 1
INSERT INTO Carts VALUES
 (151, 50);

-- Insert 2
INSERT INTO Carts VALUES
 (152, 51);

-- Insert 3
INSERT INTO Carts VALUES
 (153, 52);

-- Insert 4
INSERT INTO Carts VALUES
 (154, 53);

-- Insert 5
INSERT INTO Carts VALUES
 (155, 54);

-- Insert 6
INSERT INTO Carts VALUES
 (156, 55);

-- Insert 7
INSERT INTO Carts VALUES
 (157, 56);

-- Insert 8
INSERT INTO Carts VALUES
 (158, 57);

-- Insert 9
INSERT INTO Carts VALUES
 (159, 58);

-- Insert 10
INSERT INTO Carts VALUES
 (160, 59);

-- Insert 11
INSERT INTO Carts VALUES
 (161, 60);

-- Insert 12
INSERT INTO Carts VALUES
 (162, 61);

-- Insert 13
INSERT INTO Carts VALUES
 (163, 62);

-- Insert 14
INSERT INTO Carts VALUES
 (164, 63);

-- Insert 15
INSERT INTO Carts VALUES
 (165, 64);

-- Insert 16
INSERT INTO Carts VALUES
 (166, 65);

-- Insert 17
INSERT INTO Carts VALUES
 (167, 66);

-- Insert 18
INSERT INTO Carts VALUES
 (168, 67);

-- Insert 19
INSERT INTO Carts VALUES
 (169, 68);

-- Insert 20
INSERT INTO Carts VALUES
 (170, 69);


 Create Table CartItems
 (
     CartItemID numeric(3),
	 Quantity numeric,
     cart_id numeric(3),
     pr_id numeric(2),
    Primary key(CartItemID),
    Foreign Key (cart_id) References Carts(Cart_id),
    Foreign Key (pr_id) References Product(PR_id) );


	-- Insert 1
INSERT INTO CartItems VALUES
 (171, 2, 151, 30);

-- Insert 2
INSERT INTO CartItems VALUES
 (172, 3, 152, 31);

-- Insert 3
INSERT INTO CartItems VALUES
 (173, 1, 153, 32);

-- Insert 4
INSERT INTO CartItems VALUES
 (174, 4, 154, 33);

-- Insert 5
INSERT INTO CartItems VALUES
 (175, 2, 155, 34);

-- Insert 6
INSERT INTO CartItems VALUES
 (176, 5, 156, 35);

-- Insert 7
INSERT INTO CartItems VALUES
 (177, 1, 157, 36);

-- Insert 8
INSERT INTO CartItems VALUES
 (178, 3, 158, 37);

-- Insert 9
INSERT INTO CartItems VALUES
 (179, 2, 159, 38);

-- Insert 10
INSERT INTO CartItems VALUES
 (180, 2, 160, 39);

-- Insert 11
INSERT INTO CartItems VALUES
 (181, 4, 161, 40);

-- Insert 12
INSERT INTO CartItems VALUES
 (182, 3, 162, 41);

-- Insert 13
INSERT INTO CartItems VALUES
 (183, 1, 163, 42);

-- Insert 14
INSERT INTO CartItems VALUES
 (184, 5, 164, 43);

-- Insert 15
INSERT INTO CartItems VALUES
 (185, 2, 165, 44);

-- Insert 16
INSERT INTO CartItems VALUES
 (186, 3, 166, 45);

-- Insert 17
INSERT INTO CartItems VALUES
 (187, 2, 167, 46);

-- Insert 18
INSERT INTO CartItems VALUES
 (188, 1, 168, 47);

-- Insert 19
INSERT INTO CartItems Values
 (189, 4, 169, 48);

-- Insert 20
INSERT INTO CartItems VALUES
 (190, 3, 170, 49);


 Create Table Payment 
 (
    PaymentID numeric(3),
    PaymentMethod VARCHAR(255),
    Amount DECIMAL(10, 2),
    CreationTimestamp datetime,
	o_id numeric(2),
    Primary key(o_id),
    Foreign Key (o_id) References Orders(O_id) );


-- Insert 1
INSERT INTO Payment VALUES
 (191, 'Credit Card', 50.00, '2023-10-21 09:30:00', 70);

-- Insert 2
INSERT INTO Payment VALUES
 (192, 'PayPal', 75.25, '2023-10-22 14:45:00', 71);

-- Insert 3
INSERT INTO Payment VALUES
 (193, 'Debit Card', 30.50, '2023-10-23 11:15:00', 72);

-- Insert 4
INSERT INTO Payment VALUES
 (194, 'Cash', 100.00, '2023-10-24 16:20:00', 73);

-- Insert 5
INSERT INTO Payment VALUES
 (195, 'Credit Card', 65.75, '2023-10-25 13:10:00', 74);

-- Insert 6
INSERT INTO Payment VALUES
 (196, 'PayPal', 40.20, '2023-10-26 17:05:00', 75);

-- Insert 7
INSERT INTO Payment VALUES
 (197, 'Debit Card', 90.90, '2023-10-27 12:30:00', 76);

-- Insert 8
INSERT INTO Payment VALUES
 (198, 'Cash', 55.60, '2023-10-28 14:55:00', 77);

-- Insert 9
INSERT INTO Payment VALUES
 (199, 'Credit Card', 70.25, '2023-10-29 10:25:00', 78);

-- Insert 10
INSERT INTO Payment VALUES
 (200, 'PayPal', 45.75, '2023-10-30 11:45:00', 79);

-- Insert 11
INSERT INTO Payment VALUES
 (201, 'Debit Card', 33.90, '2023-10-31 16:40:00',80);

-- Insert 12
INSERT INTO Payment VALUES
 (202, 'Cash', 60.10, '2023-11-01 09:55:00', 81);

-- Insert 13
INSERT INTO Payment VALUES
 (203, 'Credit Card', 25.50, '2023-11-02 13:20:00', 82);

-- Insert 14
INSERT INTO Payment VALUES
 (204, 'PayPal', 80.75, '2023-11-03 17:15:00', 83);

-- Insert 15
INSERT INTO Payment VALUES
 (205, 'Debit Card', 50.60, '2023-11-04 12:50:00', 84);

-- Insert 16
INSERT INTO Payment VALUES
 (206, 'Cash', 95.30, '2023-11-05 10:30:00', 85);

-- Insert 17
INSERT INTO Payment VALUES
 (207, 'Credit Card', 42.75, '2023-11-06 15:05:00', 86);

-- Insert 18
INSERT INTO Payment VALUES
 (208, 'PayPal', 73.40, '2023-11-07 16:25:00', 87);

-- Insert 19
INSERT INTO Payment VALUES
 (209, 'Debit Card', 38.20, '2023-11-08 11:55:00', 88);

-- Insert 20
INSERT INTO Payment VALUES
 (210, 'Cash', 85.90, '2023-11-09 14:30:00', 89);


 Create Table ProductReviews
 (
    ReviewID numeric(3),
	Rating numeric,
    Comment varchar(255),
    pr_id numeric(2),
    C_id numeric(2),
    Primary key (ReviewID),
    Foreign Key (pr_id) References Product(PR_id),
    Foreign Key (c_id) References Customers(C_id) );


	-- Insert 1
INSERT INTO ProductReviews VALUES
 (211, 4, 'Great product!', 30, 50);

-- Insert 2
INSERT INTO ProductReviews VALUES
 (212, 5, 'Excellent quality, fast delivery!', 31, 51);

-- Insert 3
INSERT INTO ProductReviews VALUES
 (213, 3, 'Average product, could be better.', 32, 52);

-- Insert 4
INSERT INTO ProductReviews VALUES
 (214, 5, 'Amazing! Highly recommended!', 33, 53);

-- Insert 5
INSERT INTO ProductReviews VALUES
 (215, 2, 'Not satisfied with the quality.', 34, 54);

-- Insert 6
INSERT INTO ProductReviews VALUES
 (216, 4, 'Good value for money.', 35, 55);

-- Insert 7
INSERT INTO ProductReviews VALUES
 (217, 5, 'Perfect, exactly as described.', 36, 56);

-- Insert 8
INSERT INTO ProductReviews VALUES
 (399, 0, 'Decent product, met my expectations.', 37, 57);

-- Insert 9
INSERT INTO ProductReviews VALUES
 (219, 4, 'Satisfied with the purchase.', 38, 58);

-- Insert 10
INSERT INTO ProductReviews VALUES
 (220, 1, 'Terrible quality, waste of money.', 39, 59);

-- Insert 11
INSERT INTO ProductReviews VALUES
 (221, 5, 'Absolutely fantastic!', 40, 60);

-- Insert 12
INSERT INTO ProductReviews VALUES
 (222, 4, 'Good product, fast shipping.', 41, 61);

-- Insert 13
INSERT INTO ProductReviews VALUES
 (223, 3, 'Could be better, expected more.', 42, 62);

-- Insert 14
INSERT INTO ProductReviews VALUES
 (224, 5, 'Top-notch quality, worth the price.', 43, 63);

-- Insert 15
INSERT INTO ProductReviews VALUES
 (225, 2, 'Disappointed with the purchase.', 44, 64);

-- Insert 16
INSERT INTO ProductReviews VALUES
 (226, 4, 'Impressed with the product.', 45, 65);

-- Insert 17
INSERT INTO ProductReviews VALUES
 (227, 5, 'Outstanding service and product!', 46, 66);

-- Insert 18
INSERT INTO ProductReviews VALUES
 (228, 3, 'Average quality, not worth the price.', 47, 67);

-- Insert 19
INSERT INTO ProductReviews VALUES
 (229, 4, 'Good product, happy with my purchase.', 47, 68);

-- Insert 20
INSERT INTO ProductReviews VALUES
 (230, 1, 'Worst product I have ever bought.', 49, 69);



  create Table Address
 (
    AddressID numeric(3),
    AddressLine1 VARCHAR(255),
    AddressLine2 VARCHAR(255),
    City VARCHAR(255),
    Statee VARCHAR(255),
    ZipCode VARCHAR(255),
    Country VARCHAR(255),
    IsBillingAddress NUMERIC(1),
    IsShippingAddress NUMERIC(1),
	 c_id numeric(2),
    Primary key(AddressID),
    Foreign Key (c_id) References Customers(C_id));

	-- Insert 1
INSERT INTO Address VALUES 
(231, '123 Main St', 'Apt 4B', 'New York', 'NY', '10001', 'USA', 1, 1, 50);

-- Insert 2
INSERT INTO Address VALUES
(232, '456 Elm St', NULL, 'Los Angeles', 'CA', '90001', 'USA', 1, 0, 51);

-- Insert 3
INSERT INTO Address VALUES
(233, '789 Oak St', NULL, 'Chicago', 'IL', '60601', 'USA', 1, 0, 52);

-- Insert 4
INSERT INTO Address VALUES 
(234, '101 Pine St', 'Suite 102', 'San Francisco', 'CA', '94101', 'USA',1, 1, 53);

-- Insert 5
INSERT INTO Address VALUES 
(235, '202 Cedar St', NULL, 'Houston', 'TX', '77001', 'USA', 1, 0, 54);

-- Insert 6
INSERT INTO Address VALUES
(236, '303 Birch St', NULL, 'Miami', 'FL', '33101', 'USA', 1, 0, 55);

-- Insert 7
INSERT INTO Address VALUES 
(237, '404 Maple St', 'Apt 3C', 'Seattle', 'WA', '98101', 'USA', 1, 1, 56);

-- Insert 8
INSERT INTO Address VALUES
(238, '505 Spruce St', NULL, 'Boston', 'MA', '02101', 'USA', 1, 0, 57);

-- Insert 9
INSERT INTO Address VALUES 
(239, '606 Fir St', NULL, 'Denver', 'CO', '80201', 'USA', 1, 0, 58);

-- Insert 10
INSERT INTO Address VALUES
(240, '707 Redwood St', 'Suite 501', 'Austin', 'TX', '78701', 'USA',1,1, 59);

-- Insert 11
INSERT INTO Address VALUES 
(241, '808 Sequoia St', NULL, 'Philadelphia', 'PA', '19101', 'USA', 1,0, 60);

-- Insert 12
INSERT INTO Address VALUES 
(242, '909 Sycamore St', NULL, 'Phoenix', 'AZ', '85001', 'USA', 1, 0, 61);

-- Insert 13
INSERT INTO Address VALUES 
(243, '111 Cedar St', 'Apt 2B', 'Dallas', 'TX', '75201', 'USA', 1, 1, 62);

-- Insert 14
INSERT INTO Address VALUES 
(244, '222 Maple St', NULL, 'San Diego', 'CA', '92101', 'USA', 1,0, 63);

-- Insert 15
INSERT INTO Address VALUES
(245, '333 Oak St', NULL, 'Portland', 'OR', '97201', 'USA', 1,0, 64);

-- Insert 16
INSERT INTO Address VALUES 
(246, '444 Pine St', 'Suite 202', 'Las Vegas', 'NV', '89101', 'USA', 1,1, 65);

-- Insert 17
INSERT INTO Address VALUES
(247, '555 Elm St', NULL, 'San Antonio', 'TX', '78201', 'USA', 1, 0, 66);

-- Insert 18
INSERT INTO Address VALUES
(248, '666 Spruce St', NULL, 'Atlanta', 'GA', '30301', 'USA', 1, 0, 67);

-- Insert 19
INSERT INTO Address VALUES
(249, '777 Fir St', 'Apt 1A', 'Minneapolis', 'MN', '55401', 'USA', 1, 1, 68);

-- Insert 20
INSERT INTO Address VALUES 
(250, '888 Redwood St', NULL, 'Detroit', 'MI', '48201', 'USA', 1, 0, 69);


create Table Inventory 
(
    InventoryID numeric(3),
    QuantityInStock numeric,
    LastStockUpdate datetime,
    ReorderThreshold numeric,
    UnitCost DECIMAL(10, 2),
	pr_id numeric(2),
    Primary key(InventoryID),
    Foreign Key (pr_id) References Product(PR_id) );


	-- Insert 1
INSERT INTO Inventory VALUES (251, 100, '2023-10-20 10:00:00', 50, 10.00, 30);

-- Insert 2
INSERT INTO Inventory VALUES (252, 75, '2023-10-20 11:30:00', 40, 8.50, 31);

-- Insert 3
INSERT INTO Inventory VALUES (253, 200, '2023-10-20 09:45:00', 80, 12.75, 32);

-- Insert 4
INSERT INTO Inventory VALUES (254, 50, '2023-10-20 14:15:00', 30, 9.99, 33);

-- Insert 5
INSERT INTO Inventory VALUES (255, 300, '2023-10-20 16:20:00', 100, 15.25, 34);

-- Insert 6
INSERT INTO Inventory VALUES (256, 80, '2023-10-20 10:45:00', 40, 7.99, 35);

-- Insert 7
INSERT INTO Inventory VALUES (257, 150, '2023-10-20 12:30:00', 60, 11.50, 36);

-- Insert 8
INSERT INTO Inventory VALUES (258, 40, '2023-10-20 15:10:00', 25, 10.75, 37);

-- Insert 9
INSERT INTO Inventory VALUES (259, 250, '2023-10-20 17:00:00', 90, 14.00, 38);

-- Insert 10
INSERT INTO Inventory VALUES (260, 0, '2023-10-20 11:00:00', 35, 9.25, 39);

-- Insert 11
INSERT INTO Inventory VALUES (261, 180, '2023-10-20 13:40:00', 70, 13.00, 40);

-- Insert 12
INSERT INTO Inventory VALUES (262, 30, '2023-10-20 18:15:00', 20, 8.00, 41);

-- Insert 13
INSERT INTO Inventory VALUES (263, 220, '2023-10-20 10:20:00', 95, 12.50, 42);

-- Insert 14
INSERT INTO Inventory VALUES (264, 70, '2023-10-20 14:50:00', 45, 10.99, 43);

-- Insert 15
INSERT INTO Inventory VALUES (265, 280, '2023-10-20 16:30:00', 110, 16.50, 44);

-- Insert 16
INSERT INTO Inventory VALUES (266, 90, '2023-10-20 12:10:00', 50, 8.75, 45);

-- Insert 17
INSERT INTO Inventory VALUES (267, 120, '2023-10-20 15:45:00', 55, 11.75, 46);

-- Insert 18
INSERT INTO Inventory VALUES (268, 20, '2023-10-20 17:30:00', 15, 7.50, 47);

-- Insert 19
INSERT INTO Inventory VALUES (269, 200, '2023-10-20 11:45:00', 75, 13.75, 48);

-- Insert 20
INSERT INTO Inventory VALUES (270, 110, '2023-10-20 14:00:00', 60, 9.50, 49);


-------QUERIES-----------







	-----------------COMPLETE------------