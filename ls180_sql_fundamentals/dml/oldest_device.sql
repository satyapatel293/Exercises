INSERT INTO devices (name) VALUES ('Magnetometer');
INSERT INTO parts (part_number, device_id) VALUES (42, 3);


SELECT name AS oldest_device 
FROM devices 
ORDER BY created_at ASC
LIMIT 1;