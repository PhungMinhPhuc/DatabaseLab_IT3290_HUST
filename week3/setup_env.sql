-- Drop schema if it already exists
DROP SCHEMA IF EXISTS week3 CASCADE;

-- Create a new schema
CREATE SCHEMA week3;

ALTER ROLE postgres SET search_path TO week3, public;