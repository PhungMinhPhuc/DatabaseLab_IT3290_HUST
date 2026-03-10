CREATE TABLE countries (
    country_id TEXT UNIQUE,
    country_name TEXT,
    region_id TEXT
);

-- INSERT INTO countries VALUES ('1234', 'China', '23952');
-- INSERT INTO countries VALUES ('1234', 'USA', '1124');

-- SELECT * FROM countries;

-- What is the difference between UNIQUE and PRIMARY KEY? (Q5 - Q7)
-- UNIQUE = only prevents duplicates
-- PRIMARY KEY = UNIQUE + NOT NULL + main identifier