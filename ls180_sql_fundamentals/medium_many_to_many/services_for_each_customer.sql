SELECT customers.name, 
       STRING_AGG(services.description, ', ') AS services 
FROM customers 
LEFT JOIN customers_services 
       ON customers_services.customer_id = customers.id 
LEFT JOIN services 
       ON customers_services.service_id = services.id
GROUP BY customers.id 



SELECT *
  FROM customers_services 
RIGHT JOIN customers 
  ON customers_services.customer_id = customers.id 
LEFT JOIN services 
  ON customers_services.service_id = services.id 

SELECT CASE WHEN customers.name = 
      lag(customers.name)
         OVER (ORDER BY customers.name) THEN NULL 
      ELSE name 
        END AS name, 
       services.description
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id