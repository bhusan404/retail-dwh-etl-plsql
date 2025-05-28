-- Description: Fact table for capturing sales transactions

CREATE TABLE fact_sales (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    time_id NUMBER NOT NULL,
    quantity_sold NUMBER NOT NULL,
    total_amount NUMBER(12, 2) NOT NULL,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES dim_products(product_id),
    CONSTRAINT fk_time_id FOREIGN KEY (time_id) REFERENCES dim_time(time_id)
);