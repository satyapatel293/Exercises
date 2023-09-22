SELECT sum(price)
FROM services 
JOIN customers_services
ON services.id = customers_services.service_id
WHERE services.price > 100


SELECT sum(price)
FROM customers
CROSS JOIN services
WHERE price > 100;