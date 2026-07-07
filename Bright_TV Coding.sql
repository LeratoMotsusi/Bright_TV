-- Databricks notebook source
---Telling Databricks to use the "Bright_TV" catalog and the "data" schema
USE bright_tv.data;


---Running the full tables
SELECT *
FROM user_profiles;

SELECT *
FROM viewerships;

--- Gender checks
SELECT DISTINCT Gender
FROM user_profiles;


SELECT DISTINCT
    CASE
        WHEN Gender = 'None' THEN 'unknown' ---Replaces the value "None" with "Unkown"
        WHEN Gender = ' ' THEN 'unknown' ---Replaces the blanks with "Unkown"
    ELSE Gender
    END AS Gender_clean
FROM user_profiles;



