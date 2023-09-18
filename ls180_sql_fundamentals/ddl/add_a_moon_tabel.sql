CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation sinteger NOT NULL CHECK(designation > 0 ),
  semi_major_axis integer CHECK(semi_major_axis > 0.0),
  mass numeric CHECK(mass > 0.0),
  planet_id integer NOT NULL REFERENCES planets(id)
);


-- NOTE!!! Do not forget the `NOT NULL` with the foreign key!!!