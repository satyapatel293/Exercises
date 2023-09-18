ALTER TABLE planets 
ADD COLUMN semi_major_axis numeric NOT NULL;


-- further exploration 


ALTER TABLE planets
DROP COLUMN semi_major_axis;

DELETE FROM stars;
INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Alpha Centauri B', 4.37, 'K', 3);
INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Epsilon Eridani', 10.5, 'K', 0);

INSERT INTO planets (designation, mass, star_id)
           VALUES ('b', 0.0036, 4); -- check star_id; see note below
INSERT INTO planets (designation, mass, star_id)
           VALUES ('c', 0.1, 5); -- check star_id; see note below

ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL;


ALTER TABLE planets 
ADD COLUMN semi_major_axis NOT NULL;

UPDATE planets SET semi_major_axis = 0.04 WHERE id = 5;
UPDATE planets SET semi_major_axis = 40 WHERE id = 6;
