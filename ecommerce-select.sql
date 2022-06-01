-- 3. Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
-- 
	SELECT c.cus_gender, COUNT(c.cus_id)
	FROM ecommerce.cutomers c
	JOIN ecommerce.order o on c.cus_id=o.cus_id 
	WHERE o.ord_amount<=3000 
    GROUP BY (c.cus_gender);

-- 4. Display all the orders along with pduct name ordered by a customer having Customer_Id=2
--
	SELECT p.pro_name, o.ord_amount, o.ord_date
	FROM ecommerce.order o
	JOIN ecommerce.supplier_pricing s ON o.pricing_id=s.pricing_id
	JOIN ecommerce.product p ON s.pro_id=p.pro_id
	WHERE o.cus_id=2;
    
-- 5. Display the Supplier details who can supply more than one product. 
--
	SELECT * FROM ecommerce.supplier 
	WHERE SUPP_ID IN 
		(
			SELECT SUPP_ID 
            FROM ecommerce.supplier_pricing 
			GROUP BY (SUPP_ID) 
			HAVING COUNT(SUPP_ID)>1
		);

-- 6. Find the least expensive product from each category and print the table with category id, name, product name and price of the product.
-- 
	SELECT cat.cat_id, MIN(t2.supp_price) as PRICE 
    FROM ecommerce.category cat 
    INNER JOIN
		(
			SELECT * FROM product p 
			INNER JOIN 
				(
					SELECT PRO_ID as id, SUPP_PRICE
                    FROM ecommerce.supplier_pricing 
                    GROUP BY id, SUPP_PRICE 
                    HAVING MIN(SUPP_PRICE)
				) as t1 
				ON t1.id=PRO_ID
		) as t2 
		ON t2.cat_id=cat.cat_id 
		GROUP BY cat.cat_id;
        
-- 7. Display the Id and Name of the Product ordered after “2021-10-05”.
--
	
	SELECT PRO_NAME, PRO_DESC
	FROM ecommerce.product as prod INNER JOIN
	(
		SELECT o.ORD_DATE, sp.PRO_ID
		FROM ecommerce.order as o 
        INNER JOIN supplier_pricing AS sp ON sp.PRICING_ID = o.PRICING_ID AND ORD_DATE>='2021-10-05' 
        ) as p1 
        ON prod.PRO_ID = p1.PRO_ID;
    
-- 8. Display customer name and gender whose names start or end with character 'A'.
-- 
	SELECT CUS_NAME, CUS_GENDER 
    FROM cutomers 
    WHERE CUS_NAME like '%A%';
    
-- 9. Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
--

	DELIMITER &&
	CREATE PROCEDURE proc()
	BEGIN
	SELECT report.supp_id, report.supp_name, report.average,
	CASE
	WHEN report.average =5 THEN 'Excellent Service'
	WHEN report.average >4 THEN 'Good Service'
	WHEN report.average >2 THEN 'Average Service'
	ELSE 'Poor Service'
	END AS Type_of_Service 
	FROM
	(
		SELECT final.supp_id, supplier.supp_name, final.average 
		FROM
		(	
			SELECT test2.supp_id, SUM(test2.rat_ratstars)/COUNT(test2.rat_ratstars) as average 
			FROM
			(	
				SELECT supplier_pricing.supp_id, test.ord_id, test.rat_ratstars 
	            FROM supplier_pricing 
				INNER JOIN
				(
					SELECT `order`.pricing_id, rating.ord_id, rating.rat_ratstars
					FROM ecommerce.order
	                INNER JOIN rating on rating.ord_id = `order`.ord_id
				) as test on test.pricing_id = supplier_pricing.pricing_id
			) as test2 group by supplier_pricing.supp_id
		) as final 
	    INNER JOIN supplier 
	    WHERE final.supp_id = supplier.supp_id) as report;
	END &&
	
	DELIMITER ;
	call proc();
	


        
        

