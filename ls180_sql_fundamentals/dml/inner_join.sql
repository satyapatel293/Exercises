SELECT devices.name, parts.part_number 
FROM devices
INNER JOIN parts 
  ON devices.id = parts.device_id;