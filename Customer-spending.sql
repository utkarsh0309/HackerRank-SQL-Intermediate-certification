SELECT customer.customer_name,CAST(invoice.total_price AS DECIMAL(10,6)) 
      Amount 
    FROM customer 
      INNER JOIN invoice ON invoice.customer_id=customer.id 
    WHERE invoice.total_price<= (SELECT (0.25*AVG(invoice.total_price)) 
    FROM invoice ) 
    GROUP BY customer.id,customer.customer_name,invoice.total_price

#mysql_solution
