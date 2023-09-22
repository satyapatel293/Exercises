SELECT description, count(service_id)
FROM services
LEFT OUTER JOIN customers_services
  ON service_id = services.id
GROUP BY services.id
HAVING count(customers_services.customer_id) >= 3
ORDER BY description