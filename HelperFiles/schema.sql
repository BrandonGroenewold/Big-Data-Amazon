-- Create Active User Table
CREATE TABLE active_user (
  billing_id INT PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  username TEXT
);

CREATE TABLE billing_info (
  billing_id INT PRIMARY KEY NOT NULL,
  street_address TEXT,
  state TEXT,
  username TEXT
);

CREATE TABLE payment_info (
  billing_id INT PRIMARY KEY NOT NULL,
  cc_encrypted TEXT
);

-- Query databse to check successful upload
SELECT * FROM active_user;

SELECT * FROM billing_info;

SELECT * FROM payment_info;

--drop table active_user; 
--drop table billing_info;
--drop table payment_info; 