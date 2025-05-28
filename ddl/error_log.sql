-- Description: Error logging table for capturing ETL exceptions

CREATE TABLE error_log (
    error_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    error_time DATE DEFAULT SYSDATE,
    error_message VARCHAR2(4000)
);