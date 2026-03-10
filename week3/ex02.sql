CREATE TABLE jobs (
    job_id TEXT,
    job_title TEXT,
    min_salary MONEY,
    max_salary MONEY,
    CONSTRAINT chk_max_salary CHECK (max_salary <= 25000::MONEY)
);