-- =======================================================================
-- 1. PROJECT NAME 
-- =======================================================================

create database netflix_analysis;
use netflix_analysis;

-- =======================================================================
-- BASIC EXPLORATION
-- =======================================================================

-- TOTAL RECORDS IN DATASET 
SELECT COUNT(*) AS total_records
from netflix_data;

-- preview first 10 rows
select * 
from netflix_data
limit 10;


-- =======================================================================
-- COUNTRY ANALYSIS 
-- =======================================================================

-- Total users by country
select country,count(*) as total
from netflix_data
group by country
order by total desc;

-- Top 5 countries with highest users 
select country,count(*) as total
from netflix_data
group by country
order by total desc;


-- =======================================================================
-- GENRE ANALYSIS 
-- =======================================================================

-- Most popular genres 
select favorite_genre,count(*) as total 
from netflix_data
group by favorite_genre
order by total desc;

-- Genre popularity by country
select country,favorite_genre, count(*) as total
from netflix_data
group by country,favorite_genre
order by total desc;

-- =======================================================================
-- DEVICE USAGE ANALYSIS
-- =======================================================================

-- DEVICE USAGE COUNT 
select device_used,count(*) as total
from netflix_data
group by device_used
order by total desc;

-- =======================================================================
-- WATCH TIME ANALYSIS
-- =======================================================================

-- AVERAGE WATCH TIME PER WEEK 
select avg(watch_time_hours_per_week)as avg_watch_time
from netflix_data;

-- =======================================================================
-- PROFILE  ANALYSIS
-- =======================================================================


-- Profile type distribution 
Select Profile_Type,count(*) as total
from netflix_data
group by Profile_Type
order by total desc;


-- =======================================================================
-- GENDER  ANALYSIS
-- =======================================================================

-- Gender distribution
Select gender,count(*) as total
from netflix_data
group by gender
order by total desc;
























