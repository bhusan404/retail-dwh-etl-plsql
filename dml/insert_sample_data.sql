-- File: insert_sample_data.sql
-- Description: Sample retail transactions inserted into staging table

INSERT INTO staging_sales VALUES (
    1, 'Alice Smith', 'alice@example.com', 'North', TO_DATE('2022-01-15', 'YYYY-MM-DD'),
    'Laptop', 'Electronics', 65000, 1, TO_DATE('2023-10-01', 'YYYY-MM-DD')
);

INSERT INTO staging_sales VALUES (
    2, 'Bob Ray', 'bob@example.com', 'South', TO_DATE('2021-11-20', 'YYYY-MM-DD'),
    'Smartphone', 'Electronics', 30000, 2, TO_DATE('2023-10-02', 'YYYY-MM-DD')
);

INSERT INTO staging_sales VALUES (
    3, 'Carol James', 'carol@example.com', 'West', TO_DATE('2020-07-05', 'YYYY-MM-DD'),
    'Headphones', 'Accessories', 1500, 3, TO_DATE('2023-10-03', 'YYYY-MM-DD')
);
