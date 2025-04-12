-- Create the schema
CREATE SCHEMA customer_mgmt;

select * from customer_mgmt.customer

-- Create the Customer table within the schema
CREATE TABLE customer_mgmt.customer (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    dob DATE NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);