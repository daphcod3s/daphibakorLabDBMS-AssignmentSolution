-- insert into table supplier 

INSERT INTO ecommerce.supplier 
	VALUES(1, "Rajesh Retails", "Delhi", 1234567890);
INSERT INTO ecommerce.supplier
	VALUES (2, "Appario Ltd.", "Mumbai", 2589631470); 
INSERT INTO ecommerce.supplier 
	VALUES (3, "Knome products", "Bangalore", 9785462315);
INSERT INTO ecommerce.supplier
	VALUES (4, "Bansai Retails", "Kochi", 8975463285);
INSERT INTO ecommerce.supplier
	VALUES (5, "Mittal Ltd.", "Lucknow", 7898456532);


-- insert into table cutomers 
 
INSERT INTO ecommerce.cutomers
	VALUES (1, "AAKASH", 9999999999, "DELHI", "M");
INSERT INTO ecommerce.cutomers
	VALUES (2, "AMAN", 9785463215, "NOIDA", "M");
INSERT INTO ecommerce.cutomers
	VALUES (3, "NEHA",9999999999, "MUMBAI", "F");
INSERT INTO ecommerce.cutomers
	VALUES (4, "MEGHA",994562339, "KOLKATA", "F");
INSERT INTO ecommerce.cutomers
	VALUES (5, "PULKIT",7895999999, "LUCKNOW", "M");
    
    
-- insert into table category   
 
 INSERT INTO ecommerce.category
	VALUES (1, "BOOKS");
INSERT INTO ecommerce.category
	VALUES (2, "GAMES");
INSERT INTO ecommerce.category
	VALUES (3, "GROCERIES");
INSERT INTO ecommerce.category
	VALUES (4, "ELECTRONICS");
INSERT INTO ecommerce.category
	VALUES (5, "CLOTHES"); 


-- insert into table product   

INSERT INTO ecommerce.product
	VALUES (1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
INSERT INTO ecommerce.product
	VALUES (2, "TSHIRT", "SIZE-L with Black, Blue and White variations", 5);
INSERT INTO ecommerce.product
	VALUES (3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);
INSERT INTO ecommerce.product
	VALUES (4, "OATS","Highly Nutritious from Nestle", 3);
INSERT INTO ecommerce.product
	VALUES (5, "HARRY POTTER","Best Collection of all time by J.K Rowling", 1);
INSERT INTO ecommerce.product
	VALUES (6, "MILK","1L Toned MIlk", 3);
INSERT INTO ecommerce.product
	VALUES (7, "Boat Earphones","1.5Meter long Dolby Atmos", 4);
INSERT INTO ecommerce.product
	VALUES (8, "JEANS","Stretchable Denim Jeans with various sizes and color", 5);
INSERT INTO ecommerce.product
	VALUES (9, "Project IGI","compatible with windows 7 and above", 2);
INSERT INTO ecommerce.product
	VALUES (10, "Hoodie","Black GUCCI for 13 yrs and above", 5);
INSERT INTO ecommerce.product
	VALUES (11, "Rich Dad Poor Dad","Written by RObert Kiyosaki", 1);
INSERT INTO ecommerce.product
	VALUES (12, "Train Your Brain","By Shireen Stephen", 1);
    
    
-- insert into table supplier_pricing     
 
INSERT INTO ecommerce.supplier_pricing
	VALUES (1, 1, 2, 1500);
INSERT INTO ecommerce.supplier_pricing
	VALUES (2, 3, 5, 30000);
INSERT INTO ecommerce.supplier_pricing
	VALUES (3, 5, 1, 3000);
INSERT INTO ecommerce.supplier_pricing
	VALUES (4, 2, 3, 2500);
INSERT INTO ecommerce.supplier_pricing
	VALUES (5, 4, 1, 1000);
INSERT INTO ecommerce.supplier_pricing
	VALUES (6, 12, 2, 780);
INSERT INTO ecommerce.supplier_pricing
	VALUES (7, 12, 4, 1450);
INSERT INTO ecommerce.supplier_pricing
	VALUES (8, 3, 1, 31000);
INSERT INTO ecommerce.supplier_pricing
	VALUES (9, 1, 5, 1450);
INSERT INTO ecommerce.supplier_pricing
	VALUES (10, 4, 2, 999);
INSERT INTO ecommerce.supplier_pricing
	VALUES (11, 7, 3, 549);
INSERT INTO ecommerce.supplier_pricing
	VALUES (12, 7, 4, 529);
INSERT INTO ecommerce.supplier_pricing
	VALUES (13, 6, 2, 105);
INSERT INTO ecommerce.supplier_pricing
	VALUES (14, 6, 1, 99);
INSERT INTO ecommerce.supplier_pricing
	VALUES (15, 2, 5, 2999);
INSERT INTO ecommerce.supplier_pricing
	VALUES (16, 5, 2, 2999);
    
    
-- insert into table order  

INSERT INTO ecommerce.order
	VALUES (101, 1500, '2021-10-06', 2, 1);
INSERT INTO ecommerce.order
	VALUES (102, 1000, '2021-10-12', 3, 5);
INSERT INTO ecommerce.order
	VALUES (103, 30000, '2021-09-16', 5, 2);
INSERT INTO ecommerce.order
	VALUES (104, 1500, '2021-10-05', 1, 1);
INSERT INTO ecommerce.order
	VALUES (105, 3000, '2021-08-16', 4, 3);
-- error inserting --
INSERT INTO ecommerce.order
	VALUES (106, 1450,'2021-08-18', 1, 9);
INSERT INTO ecommerce.order
	VALUES (107, 789, '2021-09-01', 3, 7);
INSERT INTO ecommerce.order
	VALUES (108, 780, '2021-09-07', 5, 6);
INSERT INTO ecommerce.order
	VALUES (109, 3000, '2021-10-10', 5, 3);
INSERT INTO ecommerce.order
	VALUES (110, 2500, '2021-09-10', 2, 4);
INSERT INTO ecommerce.order
	VALUES (111, 1000, '2021-09-15', 4, 5);
INSERT INTO ecommerce.order
	VALUES (112, 789, '2021-09-16', 4, 7);
INSERT INTO ecommerce.order
	VALUES (113, 31000, '2021-09-16', 1, 8);
INSERT INTO ecommerce.order
	VALUES (114, 1000, '2021-09-16', 3, 5);
INSERT INTO ecommerce.order
	VALUES (115, 3000, '2021-09-16', 5, 3);
INSERT INTO ecommerce.order
	VALUES (116, 99, '2021-09-17', 2, 14);


-- insert into table rating  

INSERT INTO ecommerce.rating
	VALUES (1, 101, 4);
INSERT INTO ecommerce.rating
	VALUES (2, 102, 3);
INSERT INTO ecommerce.rating
	VALUES (3, 103, 1);
INSERT INTO ecommerce.rating
	VALUES (4, 104, 2);
INSERT INTO ecommerce.rating
	VALUES (5, 105, 4);
-- error inserting --
INSERT INTO ecommerce.rating
	VALUES (6, 106, 3);
INSERT INTO ecommerce.rating
	VALUES (7, 107, 4);
INSERT INTO ecommerce.rating
	VALUES (8, 108, 4);
INSERT INTO ecommerce.rating
	VALUES (9, 109, 3);
INSERT INTO ecommerce.rating
	VALUES (10, 110, 5);
INSERT INTO ecommerce.rating
	VALUES (11, 111, 3);
INSERT INTO ecommerce.rating
	VALUES (12, 112, 4);
INSERT INTO ecommerce.rating
	VALUES (13, 113, 2);
INSERT INTO ecommerce.rating
	VALUES (14, 114, 1);
INSERT INTO ecommerce.rating
	VALUES (15, 115, 1);
INSERT INTO ecommerce.rating
	VALUES (16, 116, 0);
    
