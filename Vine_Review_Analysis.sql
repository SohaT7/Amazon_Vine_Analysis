-- Create review_id_table
CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- Create products_table. This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Create customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- Create vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- Select values in tables to show
SELECT * FROM customers_table;
SELECT * FROM products_table;
SELECT * FROM review_id_table;
SELECT * FROM vine_table;

-- Create a new vine table. Contains helpful values only.
-- (total count >= 20 and helpful votes >= 50%)
SELECT * INTO vine_table_new
FROM vine_table
WHERE total_votes >= 20 AND
CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >= 0.5;
-- Read vine_table_new
SELECT * FROM vine_table_new;

-- Count total number of reviews
SELECT COUNT(*) FROM vine_table_new; -- 40565

-- Calculate total number of vine reviews
SELECT COUNT(*) FROM vine_table_new
WHERE vine = 'Y'; --94

-- Calculate total number of non-vine reviews
SELECT COUNT(*) FROM vine_table_new
WHERE vine = 'N'; --40471

-- Calculate total number of five star vine reviews
SELECT COUNT(*) FROM vine_table_new
WHERE vine = 'Y' AND star_rating = 5; --48

-- Calculate total number of five star non-vine reviews
SELECT COUNT(*) FROM vine_table_new
WHERE vine = 'N' AND star_rating = 5; --15663

-- Calculate percentage of five star vine reviews
SELECT 100 * CAST((SELECT COUNT(*) 
		FROM vine_table_new vtn
  		WHERE vtn.vine = 'Y' AND 
				   vtn.star_rating = 5) AS FLOAT) 
		/ CAST(COUNT(*) AS FLOAT)
FROM vine_table_new vtn
WHERE vtn.vine = 'Y';
	
-- Calculate percentage of five star non-vine reviews
SELECT 100 * CAST((SELECT COUNT(*) 
		FROM vine_table_new vtn
  		WHERE vtn.vine = 'N' AND 
				   vtn.star_rating = 5) AS FLOAT) 
		/ CAST(COUNT(*) AS FLOAT)
FROM vine_table_new vtn
WHERE vtn.vine = 'N';









