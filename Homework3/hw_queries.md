Question1:
select count(*)
from indigo-night-447804-g7.ny_taxi.external_yellow_trip_data
Answer: 20332093

Question2:
select count(distinct PULocationID)
from `indigo-night-447804-g7.ny_taxi.external_yellow_trip_data`

select count(distinct PULocationID)
from indigo-night-447804-g7.ny_taxi.materialized_yellow_trip_data

Answer: 18.82 MB for the External Table and 47.60 MB for the Materialized Table

Question3:
SELECT PULocationID,DOLocationID
FROM `indigo-night-447804-g7.ny_taxi.yellow_trip_data`

SELECT PULocationID
FROM `indigo-night-447804-g7.ny_taxi.yellow_trip_data`

Question4:
select count(*)
from `indigo-night-447804-g7.ny_taxi.yellow_trip_data` 
where fare_amount = 0

Answer:8333

Question5:
CREATE OR REPLACE TABLE `indigo-night-447804-g7.ny_taxi.yellow_trip_data_partition_clustered` 
PARTITION BY DATE(tpep_pickup_datetime)
CLUSTER BY VendorID AS
SELECT * FROM `indigo-night-447804-g7.ny_taxi.yellow_trip_data` ;

Question6:
--310.24 MB
select distinct VendorID
from indigo-night-447804-g7.ny_taxi.materialized_yellow_trip_data
where tpep_dropoff_datetime between '2024-03-01' and '2024-03-15'

--26.86MB
select distinct VendorID
from indigo-night-447804-g7.ny_taxi.yellow_trip_data_partition_clustered
where tpep_dropoff_datetime between '2024-03-01' and '2024-03-15'
