# Group-5-Project
Shared repository for group 5 final project

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

### ERD

Simplifed (only necessary columns included):
![ERD_Simple](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Images/ERD_Simple.png)

Full:
![ERD_Full](https://github.com/chloebellehooton/Group-5-Project/blob/krockway/Images/ERD_Full.png)

### Data Cleansing Process
1. Combine all County data into 1 table
2. Link the wildfire data to the county data using lattitude and longitude

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
