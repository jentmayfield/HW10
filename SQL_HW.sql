-- Create and use customer_db
CREATE DATABASE beer_db;
USE beer_db;

-- Create tables for raw data to be loaded into
CREATE TABLE recipe_db (
  beer_name TEXT,
  style TEXT,
  style_id INT,
  size INT,
  og INT,
  fg INT,
  abv INT,
  ibu INT,
  color INT,
  boil_size INT,
  boil_time INT,
  boil_gravity TEXT,
  efficiency INT,
  mash_thickness TEXT,
  sugar_scale TEXT,
  brew_method TEXT,
  pitch_rate TEXT,
  primary_temp TEXT,
  primary_method TEXT,
  primary_amount TEXT
);

CREATE TABLE style_db (
  style_id INT PRIMARY KEY,
  style TEXT
);


CREATE TABLE review_db (
	review_overall INT,
    review_aroma INT,
    review_appearance INT,
    style TEXT,
    review_palate INT,
    review_taste INT,
    name TEXT,
    beer_abv INT
);

-- Joins the tables
SELECT style_db.style, COUNT(recipe_db.style) AS recipes_by_style
FROM recipe_db
INNER JOIN style_db
ON recipe_db.style = style_db.style
GROUP BY recipe_db.style;

SELECT style_db.style, AVG(review_db.review_overall) AS review_by_style
FROM review_db
INNER JOIN style_db
ON review_db.style = style_db.style
GROUP BY review_db.style;

SELECT * FROM review_db
WHERE style = "sahti";
