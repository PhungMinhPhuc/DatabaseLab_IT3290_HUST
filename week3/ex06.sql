CREATE TABLE jobs (
    job_id TEXT,
    job_title TEXT DEFAULT '',
    min_salary MONEY DEFAULT 8000,
    max_salary MONEY DEFAULT NULL
);

-- INSERT INTO jobs DEFAULT VALUES;

-- SELECT * FROM jobs;