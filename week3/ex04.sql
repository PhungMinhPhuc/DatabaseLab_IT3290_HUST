CREATE TABLE job_history (
    employee_id TEXT, 
    start_date TEXT,
    end_date TEXT, 
    job_id TEXT,
    department_id TEXT,
    CONSTRAINT chk_end_date_format CHECK (end_date ~ '^\d{2}/\d{2}/\d{4}$') 
);

-- INSERT INTO job_history VALUES ('123', 'ABC', '28/09/2006', 'MNP', '1100');

-- SELECT * FROM job_history;

-- Regular Expression:
-- ~ is used for regex matching
-- ^: start of the string
-- \d: digit (or [0-9])
-- {2}: exactly 2 digits
-- $: end of the string