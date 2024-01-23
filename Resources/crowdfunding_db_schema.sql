CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    sub_category VARCHAR
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
	company_name VARCHAR,
    description VARCHAR,
    goal INT,
    pledged VARCHAR,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
