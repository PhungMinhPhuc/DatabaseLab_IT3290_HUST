CREATE TABLE countries (
    country_id SERIAL UNIQUE,
    country_name TEXT,
    region_id TEXT
);


-- INSERT INTO countries (country_name, region_id) VALUES ('1234', 'VIet Nam');
-- INSERT INTO countries (country_name, region_id) VALUES ('1232', 'Japan');
-- INSERT INTO countries (country_name, region_id) VALUES ('1235', 'China');
-- INSERT INTO countries (country_name, region_id) VALUES ('12', 'Russia');
-- INSERT INTO countries (country_name, region_id) VALUES ('123', 'USA');


-- SELECT * FROM countries;