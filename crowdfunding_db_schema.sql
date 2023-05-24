-- Create subcategory table
CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR
);

-- Create contacts table
CREATE TABLE contacts (
  contact_id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);

-- Create category table
CREATE TABLE category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR
);

-- Create campaign table
CREATE TABLE campaign (
  cf_id INTEGER PRIMARY KEY,
  contact_id VARCHAR,
  company_name VARCHAR,
  description VARCHAR,
  goal NUMERIC,
  pledged NUMERIC,
  outcome VARCHAR,
  backers_count INTEGER,
  country VARCHAR,
  currency VARCHAR,
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR,
  subcategory_id VARCHAR,
  FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
  FOREIGN KEY (category_id) REFERENCES category (category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
