-- =====================================
-- CREATE THE DATABASE 
-- =====================================

CREATE DATABASE IF NOT exists netflix_analysis;
use netflix_analysis;

-- =====================================
-- DROP TABLE IF EXISTS 
-- =====================================
DROP TABLE IF EXISTS netflix_data;

-- =====================================
-- CREATE NETFLIX DATA TABLE
-- =====================================
CREATE TABLE netflix_data (
user_id int PRIMARY KEY,
age int,
gender varchar(20),
country varchar (50),
subscription_type varchar(50),
favorite_genre varchar(50),
device_used varchar(50),
watch_time_hours_per_week int,
profile_type varchar(50));









  