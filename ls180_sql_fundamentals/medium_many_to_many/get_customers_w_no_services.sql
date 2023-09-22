SELECT DISTINCT customers.*
FROM customers_services
RIGHT OUTER JOIN customers
  ON customers_services.customer_id = customers.id 
WHERE service_id IS NULL;


SELECT DISTINCT customers.*, services.*
FROM customers_services
FULL JOIN customers
  ON customers_services.customer_id = customers.id 
FULL JOIN services 
  ON customers_services.service_id = services.id
WHERE service_id IS NULL OR customer_id IS NULL;
