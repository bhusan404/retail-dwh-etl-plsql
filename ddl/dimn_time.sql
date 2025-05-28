-- Description: Dimension table for date/time breakdowns

CREATE TABLE dim_time (
    time_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sale_date DATE NOT NULL,
    day_name VARCHAR2(10),
    month_name VARCHAR2(10),
    year NUMBER(4)
);