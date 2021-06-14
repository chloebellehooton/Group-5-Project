# Group-5-Project
Shared repository for group 5 final project

## Topic of the Project.
Objective of the project is to find correlation between California wildfire and weather conditions.

## Reason for Selection of Topic

California wildfires cost the US economy almost 0.7% of the country’s annual GDP , of which $45.9bn was lost outside the state,also substantial morbidity/mortality.
Predicting the frequency of fires can help with emergency planning and proactive disaster risk management.
Apart from that all four of us group mates residing at Caliornia also have equal interest and anxiety for the cause.

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

1.ETL tools/methods like python pandas, postgres db will be used to extract data,cleanse and transform data and load.

2.Machine Learning models in python will be used to analyze if California Wildfire can be predicted based on weather conditions.

3.Tableau will be used to create the dashbroad and create stories.

## ML Mock Up Plan

ETL process will be performed on California wildfire dataset(extracted from kaggle) and weather dataset of the counties(extracted from : https://www.ncdc.noaa.gov/cdo-web/search)  which is recorded in wildfire dataset.

ML models RandomForestClassifier & GradientBoostingClassifier algorithms will be tested and best model will be finalized.
Also will check if  Deep Neutral Network model is feasible.

WILDFIRE Dataset has information 

1.Acres Burned
2.Personnel Involed
3.Structures Damaged
4.Structures Destroyed
5.Fatalities

These information can be used predict if its a large wildfire.

Corelating above data with weather information like Precipitaion,Temperature and Wind speed , ML will learn and predict wildfire.

Mockup Script is added at https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/ML_MOCK_UP_Script.ipynb

