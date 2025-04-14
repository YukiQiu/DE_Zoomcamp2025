--Q1:
select artist_hotttnesss_band,round(avg(duration),0) as avg_duration
from indigo-night-447804-g7.project_millionsongs.millionsongsdata02
where duration > 60
group by 1
-- low: 241
-- medium: 242
-- high: 252

--Q2:
select title,artist_name,artist_location,duration
from indigo-night-447804-g7.project_millionsongs.millionsongsdata02
where year >= 2000
order by duration desc
limit 1
-- Live At Brixton Academy 1999,Atari Teenage Riot, Berlin, Germany, 1598.1971s


--Q3:
select year,count(distinct track_id) as cnts
from indigo-night-447804-g7.project_millionsongs.millionsongsdata02
where year >= 2000
group by 1
order by cnts desc
limit 1
--2006, 320 songs
