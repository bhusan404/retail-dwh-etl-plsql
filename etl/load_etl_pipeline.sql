-- File: load_etl_pipeline.sql
-- Description: Main ETL procedure to populate dimension and fact tables from staging

CREATE OR REPLACE PROCEDURE load_etl_pipeline IS
BEGIN
    -- Load Customers (Dim)
    INSERT INTO dim_customers (customer_name, email, region, signup_date)
    SELECT DISTINCT customer_name, email, region, signup_date
    FROM staging_sales s
    WHERE NOT EXISTS (
        SELECT 1 FROM dim_customers d WHERE d.email = s.email
    );

    -- Load Products (Dim)
    INSERT INTO dim_products (product_name, category, price)
    SELECT DISTINCT product_name, category, price
    FROM staging_sales s
    WHERE NOT EXISTS (
        SELECT 1 FROM dim_products d WHERE d.product_name = s.product_name
    );

    -- Load Time (Dim)
    INSERT INTO dim_time (sale_date, day_name, month_name, year)
    SELECT DISTINCT sale_date,
           TO_CHAR(sale_date, 'Day'),
           TO_CHAR(sale_date, 'Month'),
           EXTRACT(YEAR FROM sale_date)
    FROM staging_sales s
    WHERE NOT EXISTS (
        SELECT 1 FROM dim_time d WHERE d.sale_date = s.sale_date
    );

    -- Load Fact Sales
    INSERT INTO fact_sales (sale_id, customer_id, product_id, time_id, quantity_sold, total_amount)
    SELECT
        s.sale_id,
        (SELECT customer_id FROM dim_customers d WHERE d.email = s.email),
        (SELECT product_id FROM dim_products p WHERE p.product_name = s.product_name),
        (SELECT time_id FROM dim_time t WHERE t.sale_date = s.sale_date),
        s.quantity_sold,
        s.quantity_sold * s.price
    FROM staging_sales s
    WHERE NOT EXISTS (
        SELECT 1 FROM fact_sales f WHERE f.sale_id = s.sale_id
    );

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        INSERT INTO error_log (error_message)
        VALUES (SQLERRM);
        COMMIT;
END;
/
