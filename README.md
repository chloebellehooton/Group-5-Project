# Group-5-Project
Shared repository for the Group 5 Final Project

## Topic of the Project.
Correlation between California wildfire and weather conditions.

## Reason for Selection of Topic

California wildfires cost the US economy almost 0.7% of the country’s annual GDP , of which $45.9bn was lost outside the state, also substantial morbidity/mortality.
Predicting the frequency of fires can help with emergency planning and proactive disaster risk management.
Apart from that all four of us group mates residing at California also have equal interest and anxiety for the cause.

## Data Sources

### Wildfire Data

- Link: https://www.kaggle.com/ananthu017/california-wildfire-incidents-20132020?select=California_Fire_Incidents.csv

- File name: California_Fire_Incidents.csv

- Columns to be used:
  - AcresBurned
  - ArchiveYear
  - Counties
  - CountyIds
  - Latitude
  - Longitude
  - Started
  - UniqueId (primary key)

### Weather Data

- Link: https://www.ncdc.noaa.gov/cdo-web/search

- File name: Placer.csv (one file of many)

- Columns to be used:
  - STATION pk
  - NAME
  - LATITUDE pk Wildfires.Latitude FK >- Wildfires.Latitude
  - LONGITUDE pk Wildfires.Longitude FK >- Wildfires.Longitude
  - ELEVATION
  - DATE
  - AWND
  - PRCP
  - TAVG
  - TMAX
  - TMIN

- Column Name IDs (for reference):
  - AWND - Average wind
  - TMAX - Maximum temperature
  - TAVG - Average temperature
  - TMIN - Minimum temperature
  - PRCP - Precipitation

## Techniques

1.ETL tools/methods like python pandas, postgres db will be used to extract data, cleanse and transform data and load.

2.Machine Learning models in python will be used to analyze if California Wildfire can be predicted based on weather conditions.

3.Tableau will be used to create the dashboard and create stories.

## Communication

Communication is facilitated by below means

1.Slack Channel
2.Zoom meetings
3.Email of Team members

## Objective of the project
Objective of the project is to find correlation between California wildfire and weather conditions.

## ML Mock Up Plan

ETL process will be performed on California wildfire dataset(extracted from Kaggle) and weather dataset of the counties(extracted from : https://www.ncdc.noaa.gov/cdo-web/search)  which is recorded in wildfire dataset.

ML models RandomForestClassifier & GradientBoostingClassifier algorithms will be tested and best model will be finalized.
Also will check if  Deep Neutral Network model is feasible.

WILDFIRE Dataset has information 

1.Acres Burned
2.Personnel Involved
3.Structures Damaged
4.Structures Destroyed
5.Fatalities

These information can be used predict if it's a large wildfire.

Correlating above data with weather information like Precipitation, Temperature and Wind speed , ML will learn and predict wildfire.

Mockup Script is added at https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/ML_MOCK_UP_Script.ipynb

## First Segment

The topic for this project is California wildfires. We will find data in regards to California wildfires from years 2013 to 2020. With this data, we will be able to predict when will the next wildfires occur in California for year 2021.

For this project, the dashboard will be built by using two tools: Pandas and GitHub. Pandas will be the tool used for data cleaning. GitHub is a tool for saving our work as we develop the project. GitHub will keep track of our work over time. Using these two tools will improve teammates communication while working on this project to complete the dashboard in a timely manner.  

The database for this project will be: Entity Relationship Diagram (ERD), Postgres, and Tableau . An ERD is used for this project for my team and I while working on the data to visually organize the database design of the project, and to provide the expected outcome of the database table. Additionally, improving the communication and relationships between the flow of the data presented. Postgres will be used as  a storage for the CSV files used throughout this project. Tableau will be used for presenting a story to viewers with visual aides to improve the understanding of data presented. 

Data sources used to find data for this project is Kaggle.com, Data.gov, climate.gov, and weather.gov. In regards to teams, Chloe Belle Hooton will take on the Square role. Kaitlin Rockway, Merin Anto, and Tahira Hamed will switch roles each week between the Circle role, Triangle role, and X role to have a fair amount of work for all three of us to complete throughout this project. 

### ERD

Simplified (only necessary columns included):
![ERD_Simple](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Images/ERD_Simple.png)

Full:
![ERD_Full](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Images/ERD_Full.png)

### Data Cleansing Process
1. Combine all County data into 1 table
2. Link the wildfire data to the county data using latitude and longitude

**************************************************************** Note from Kaitlin: If there is a more efficient way to gather this data, I'm certainly open. The site limits you to 1000 records of data per report, so this seemed like a solution. Also open to other data sources ****************************************************************

#### How to Extract County Data

1. Visit https://www.ncdc.noaa.gov/cdo-web/search
2. Input the search criteria
![Page1](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Reference_DownloadCountyData/Page1.png)
3. Add county to cart
![Page2](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Reference_DownloadCountyData/Page2.png)
4. Select criteria. Continue.
![Page3](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Reference_DownloadCountyData/Page3.png)
5. Select criteria. Continue.
![Page4a](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Reference_DownloadCountyData/Page4a.png)
![Page4b](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Reference_DownloadCountyData/Page4b.png)
6. Input email address. Submit order.
7. You'll receive an email notice that the order is in process.
8. A few minutes later, you'll receive a link to download the CSV file.

### Visualizations
Link: https://public.tableau.com/app/profile/chloe.belle.hooton/viz/GroupProject_draft1/HeatMap-AcresBurned
