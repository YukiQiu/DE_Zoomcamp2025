# **Problem Description**

For this project, I'm using the Million Songs Dataset to get some insights and show them with visualization. 

## **DataSet Introduction**

This Million Song Dataset contains millions of songs, each including its length, release date, singer, and so on.

Here is the source data link:http://millionsongdataset.com/

I randomly selected 100,000 records from the source data in the project since the source dataset was too large. 

The questions I'm trying to figure out using this subset are below:
1. What is the average duration of each artists' hottness band with duration > 60s?
2. Which song has the longest duration, by which singer since 2000?
3. Which year has the most songs been released since 2000?

## **Data Dictionary**

(Source from http://millionsongdataset.com/pages/example-track-description/)

- **track_id**: The Echo Nest ID of this particular track on which the analysis was done

- **title**: The Song Title

- **artist_name**: Singer Name

- **duration**: duration of the track in seconds

- **year**: the year when this song was released, according to musicbrainz.org

- **loudness**: general loudness of the track

- **artist_hotttnesss**: artist hotttesss

- **song_hotttnesss**: according to The Echo Nest, when downloaded (in December 2010), this song had a 'hotttnesss': a scale of 0 and 1

- **artist_hotttnesss_band**: artist hotness band defined by artist hotness as (0,0.3,0.6,1) as bin distribution logic

# **Technologies**

- Batch - Spark
- Cloud - GCP
- Data Warehouse - Bigquery
- Data Visualization - Metabase

## **Could**

This project used GCP as a cloud platform. 

## **Data Indestion**

Since the original format of this dataset is HDF5, I first utilized the pre-defined package on MillionSongs website to read the data in Jupyter Notebook. Then, I used Spark to ingest the data to GCP.

## **Data Warehouse**

Since I'm using the GCP cloud, I chose BigQuery as a data warehouse. By connecting BigQuery using Spark, I created a table in BigQuery to write query to solve my questions.

## **Data Visualization**

I used Metabase as the data visualization platform. I linked BigQuery with Metabase to create the charts below:

### **Artist Hotness Distribution**
<img width="511" alt="Screenshot 2025-04-13 at 5 48 26 PM" src="https://github.com/user-attachments/assets/eb47f3e9-6e13-45ce-8a90-94c2250b4a6b" />

### **Song Released Year Distribution**
<img width="511" alt="Screenshot 2025-04-13 at 5 49 23 PM" src="https://github.com/user-attachments/assets/a19e3a6f-acae-4290-a050-1bca4d9807ef" />

### **Average Duration of Each Artist Hotness Band:**
<img width="499" alt="Screenshot 2025-04-13 at 6 55 55 PM" src="https://github.com/user-attachments/assets/c033d93e-22bf-468c-8b51-5c55aeea2976" />

# **Future Improvements**

- Adding this project in local environment using Postgres
- Adding Stream process


# **Documents Attached**

- **Notebooks**: Including notebooks used to ingest data
- **data**: Dataset used in this project
- **HelpSources**: Pre-defined code to read hdf5 file
- **Dashboard**: Dashboard PDF
- Query to Solve the questions

# **Acknowledgments**

Thank you to the DataTalksClub Data Engineering Zoomcamp team for providing such a comprehensive and hands-on learning experience. I’ve learned a lot through this course.

A big thanks as well to everyone who has taken the time to view or explore my project — I appreciate your interest and support!
