-- Description: Dimension table for customer information

CREATE TABLE dim_customers (
    customer_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    region VARCHAR2(50),
    signup_date DATE
);