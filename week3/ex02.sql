CREATE TABLE jobs (
    job_id TEXT,
    job_title TEXT,
    min_salary MONEY,
    max_salary MONEY,
    CONSTRAINT chk_max_salary CHECK (max_salary <= 25000::MONEY)
);

-- INSERT INTO jobs VALUES ('000', 'ABC', 1234, 120);

-- SELECT * FROM jobs;