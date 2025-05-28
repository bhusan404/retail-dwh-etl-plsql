-- Description: Staging table for raw retail transactions before ETL processing

CREATE TABLE staging_sales (
    sale_id NUMBER,
    customer_name VARCHAR2(100),
    email VARCHAR2(100),
    region VARCHAR2(50),
    signup_date DATE,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    price NUMBER(10,2),
    quantity_sold NUMBER,
    sale_date DATE
);