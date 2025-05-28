-- Description: Dimension table for product catalog

CREATE TABLE dim_products (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    category VARCHAR2(50),
    price NUMBER(10, 2)
);
