DROP TABLE IF EXISTS items;

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  title TEXT,
  author TEXT,
  isbn TEXT,
  condition TEXT,
  specifics TEXT,
  edition TEXT,
  year INT,
  cover TEXT,
  weight NUMERIC,
  env NUMERIC,
  paper NUMERIC,
  total NUMERIC
);
