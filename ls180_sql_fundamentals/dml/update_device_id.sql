SELECT parts.*, devices.name 
FROM parts 
JOIN devices
  ON parts.device_id = devices.id
WHERE devices.name = 'Gyroscope'
ORDER BY parts.id DESC
LIMIT 2;

UPDATE parts
SET device_id = 1 
WHERE id = 19 OR id = 18

UPDATE parts
SET device_id = 1
WHERE part_number = (select min(part_number) FROM parts);