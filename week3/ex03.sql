CREATE TABLE countries (
    country_id TEXT,
    country_name TEXT,
    region_id TEXT
    CONSTRAINT chk_country_name CHECK (country_namw IN (''))
)