📌 Introduction

This project analyzes YouTube Trending Videos across regions (US & GB) to uncover insights about views, engagement, trending duration, and sentiment patterns. By combining Python, SQL, and Power BI/Tableau, the project demonstrates how raw YouTube data can be transformed into actionable business insights.

🎯 Abstract

The objective of this project is to:

Clean and merge regional YouTube trending datasets

Perform SQL-based analytics to identify most popular categories & regions

Apply sentiment analysis on video titles and tags

Visualize patterns such as region-wise comparisons, monthly spikes, and trending duration

Build an interactive dashboard for storytelling with data

🛠️ Tools Used

Python (Pandas, Seaborn, Matplotlib, TextBlob) → Cleaning, EDA, sentiment

SQLite & SQL → Querying & aggregations

Power BI / Tableau → Dashboard design & storytelling

GitHub → Version control & submission

🔄 Steps Involved

Data Cleaning → Standardized publish dates, mapped category IDs, removed duplicates

SQL Queries → Wrote queries for category ranking, region comparison, time-series analysis, trending duration, sentiment

Exploratory Data Analysis → Visualized categories, regions, engagement patterns, and time-series trends

Dashboard Design → Built 3-page dashboard in Power BI/Tableau:

Page 1: Overview (KPIs, Category Views)

Page 2: Region & Time Analysis

Page 3: Trending Duration & Sentiment

📊 Key Insights

🎵 Music & Entertainment dominate views across all regions

🌍 Regional differences in engagement (likes & comments per view)

📆 Spikes in monthly uploads reveal seasonal trends

⏳ Average trending duration varies significantly by region

😊 Positive sentiment dominates titles & tags, especially in Music

📂 Datasets

📥 Full Datasets (Google Drive):

USvideos.csv (https://drive.google.com/file/d/1yycJW6IVNBi_XPJ6TcWro56vi3smxj6n/view?usp=drive_link) 

GBvideos.csv (https://drive.google.com/file/d/1we9jO4uum8O8LTJFYLratQo14O4Lk1Ry/view?usp=drive_link)

youtube_trending_clean.csv (https://drive.google.com/file/d/182JazH1qdml-k_KIS7Uk8qLRP5xpF_3Y/view?usp=drive_link)

youtube_trending.db (https://drive.google.com/file/d/1u8D1yQa3u1i4sOxwZ7mtZRRKG4FRYGZN/view?usp=drive_link)

📂 Samples in Repository (100 rows each):

USvideos_sample.csv

GBvideos_sample.csv

youtube_trending_clean_sample.csv

📂 Repository Structure
youtube-trending/
├─ data/
│  ├─ USvideos_sample.csv
│  ├─ GBvideos_sample.csv
│  ├─ youtube_trending_clean_sample.csv
├─ notebooks/
│  └─ youtube_trending.ipynb
├─ sql/
│  └─ youtube_trending.sql
├─ dashboards/
│  └─ youtube_trending.pbix  (or .twbx)
├─ report/
│  └─ YouTube_Project_Report.pdf
└─ README.md

📌 Conclusion

This project strengthened my skills in data cleaning, SQL querying, EDA, and dashboard storytelling. It revealed how data-driven insights can explain why some videos go viral and how engagement varies across regions.

🙌 Special thanks to Elevate Labs for their mentorship and guidance during this internship.
