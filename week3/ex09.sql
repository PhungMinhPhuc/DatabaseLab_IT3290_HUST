CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL, 
    min_salary DECIMAL(6,0) DEFAULT NULL,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

-- The exercise start.

CREATE TABLE job_history (
     employee_id TEXT,
     start_date DATE,
     end_date DATE,
     job_id VARCHAR(10) CONSTRAINT fkey_jobhistory2jobs REFERENCES jobs(job_id), -- Or FOREIGN KEY (job_id) CONSTRAINT fkey_jobhistory2jobs REFERENCES jobs(job_id),
     department_id TEXT
);


SELECT * FROM jobs;
SELECT * FROM job_history;

-- Note: If you see "NO NULL", the column must have a value when inserting, regardless of what the Default column shows.