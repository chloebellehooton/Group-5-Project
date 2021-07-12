# California Wildfires

## Introduction
As California residents, we each have first hand knowledge of the devastation that wildfires can have on communities, public health and the economy.

In 2018 alone, California experienced 8,500 unique wildfires, making it the most destructive in state history. In that year, California incurred $102.6B in damages in state—$59.9B in health costs & capital losses, $42.7B caused by economic disruption.

As well as an additional $45.9B in indirect losses outside the state, due to economic links between California and the rest of the US.
Predicting the magnitude of fires can help with emergency planning and create proactive disaster risk management.

## Data Sources

### Wildfire Data

- [Link] (https://www.kaggle.com/ananthu017/california-wildfire-incidents-20132020?select=California_Fire_Incidents.csv)

- File name: California_Fire_Incidents.csv

- Contains data from 2013-2019 which includes acres burned, start date and county information.

### Weather Data

- [Link] (https://www.ncdc.noaa.gov/cdo-web/search)

- File name: Placer.csv (one file of many)

- Contains monthly precipitation, wind conditions and maximum temperature per county for the same 2013-19 time frame.

### Top 20 California Wildfires

- [Link] (https://www.kaggle.com/annieichen/top-20-largest-california-wildfires)

- File name: top_20_CA_wildfires.csv

- Contains data from 1932 to 2018 and accounts for most acres burned in state history. This data also included the “Cause” column, which is why we included it in our study

## Exploratory Questions

1. How does time of year impact wildfire size?
2. Can county, monthly precipitation and temperature predict the size of a wildfire?
3. If there is a large wildfire one year, are wildfires in subsequent years smaller?
4. What are the other major causes of wildfires?

## Data Exploration & Cleansing

The county weather data had limitations on the number of records that could be exported at one time, so a unique file was downloaded for each of the 58 California counties. We then combined all 58 CSV files into a single data frame for cleansing.

Some temperature and precipitation data was missing from 40k of the 86k records. Instead of dropping them, we used nearby weather stations from the same timeframe & same county. 
We then calculated the median & maximum of maximum temperature recorded in each county for each month.

Next we calculated the mean for precipitation recorded in each county for each month; based on that we calculated the rolling sum of precipitation recorded in each county for each month.

After doing so, we were left with only 196 null records, which were dropped.

Lastly we merged the county data into the wildfire data, matching the county and time frame.

## Communication Protocol

Communication is facilitated through:

1. Slack Channel
2. Zoom meetings

## Resources
* Link to [Slides] (https://docs.google.com/presentation/d/14XQn7cpDONCkHlscJuxnlVTtZouA39ATcv8GOpUrA9s/edit?ts=60cc0e5a#slide=id.ge1563a2cf5_0_11431)
* Link to [Speaker Notes] (https://docs.google.com/document/d/1iUitJMps1n6P488K7TZWX8PqQfuRzrcmXJbUpkUVJg4/edit)
* Link to [Kaitlin’s Visualizations] (https://public.tableau.com/app/profile/kaitlin.rockway/viz/CA_Wildfire/CausationbyYearbyFire)
*Link to [Chloe Belle’s Visualizations] (https://public.tableau.com/app/profile/chloe.belle.hooton/viz/Group-5-Project/AcresbyCounty)
(https://public.tableau.com/app/profile/chloe.belle.hooton/viz/shared/F5339HSY9)
*Link to [Tahira’s Visualizations]
(California_County_Population | Tableau Public)
(Precipitation_vs_Acres_Burned | Tableau Public)
(Top_15_Maximum_Damaged_vs_Destroyed | Tableau Public)

 ## Machine Learning Model
  
 ### Feature Engineering/Selection
 
After initial analysis of the data, the team decided to run an unsupervised machine learning on the merged wildfire and weather information, so that the weather, county and month of the year  will help to predict which wildfires belong to which cluster/class.

Later during the analysis it was determined that discrete clusters are not formed; therefore we chose to approach supervised learning.

For our supervised machine learning model, we hope to predict the large wildfires (where acres burned is greater than 10,000).
 
 ## Unsupervised Learning Model

 #### K-means algorithm is used to cluster the wildfires using the PCA data
 
 1. Inputs used 
   
   - Maximum Temperature 
   - Cumulative sum of precipitation
   - County 
   - Month of the year
   - Acres burned
  
 2. Pre processing done using the script : https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Clustering_wildfires_ML-Preprocessing.ipynb
  
 3. K-means algorithm is implemented using the script: https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Clustering_ML.ipynb

 #### Summary of Analysis
 
 1. Elbow curve is created : ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Cluster_Elbow_curve.png)
 
 2. 4 Clusters are formed: ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Cluster_3d.png)

 3. From clusters maximum temperature, precipitation received for the month of the year & county (location) has relation with acres burned, but clusters were not discrete. Analysis of clusters shows some unaccounted factors also exist like wind, lightning, human activities, and/or PG&E power lines issues.

4. Benefits of K-means Clustering Algorithm is to analyze the entire dataset without choosing the target and feature or input variables.But disadvantage is there is always a chance analysis won’t give any fruitful conclusions. Below list a few disadvantages.
 1 .Choosing k means correctly.
 2. Clustering data of varying sizes and density.
 3. Clustering outliers.
 4. Scaling with a number of dimensions.

  
 
 ## Supervised Learning Model
 
 ### Analysis
 
In this analysis, wildfires where acres burned is greater than 10,000 are classified as very large fires.
 
   - Among 1,486 records, 79 records had acres burned greater than 10,000
 
   - Dataset was split into training and test set using module train_test_split from sklearn.
 
RandomForestClassifier, GradientBoostingClassifier & EasyEnsembleClassifier models are used to predict the large wildfire.
 
 ### Summary Of Analysis
 
 Among the models RandomForestClassifier & GradientBoostingClassifier has good accuracy scores.
  
  - RandomForestClassifier Model Report
 
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire.png)
    
  - GradientBoostingClassifier Report
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire_gradientboost.png)
 
EasyEnsembleClassifier has a low accuracy store compared to other two models, but when predicting the __large wildfires__ EasyEnsembleClassifier has the most accuracy.
    
![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire_easyensemble.png)
 
This is due to the fact using simpler metrics like accuracy score can be misleading.  In a dataset with highly unbalanced classes, the classifier will always “predict” the most common class without much error. and it will have a high accuracy rate, obviously not the correct one.Easy ensemble here predicted minority class( large wildfire flag -1) with much accuracy compared to other two models.

   
### Tail End 
  
Supervised models are used to predict when wildfires go beyond usual natural level (acres burned greater than 221), but classification reports showed the models are not as good in predicting the wildfires for acres greater than 221 as very large wildfires (acres burned greater than 10,000).

Factors like wind, lightning, human activities, PG&E power lines issues are not considered in the model. That can be a reason the models are not performing as well as desired.

Machine Learning Analysis details available at https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/ML.md

## Recommendation for Future Analysis
- Look into fire legislation and measure their effects on both quantity and magnitude of fires over the years 
- Specifically, the Smokey the Bear effect
- Examine the impact of the 4th of July: there’s a surge of fires in July, is there a correlation between that and illegal fireworks during the summer holidays? 
- Add in population and industry information

## Anything the team would have done differently

- Explore data sources to have a more complete and robust weather data source. 

- Enhance the causation data based on preliminary analysis. 

- Tried Deep Neural Networks for the machine learning aspect. 

### Description of the analysis phase of the project. 

- Wildfire data, temperature, and precipitation information was merged. 

- K-means algorithm was run on the merged dataset to form clusters to understand wildfire patterns. 

- Supervised Learning was used to predict very large wildfires where acres burned was greater than 10,000 acres.

- Easy ensemble model predicted large wildfires with the fewest errors. 

## Dashboard

### Tools Used 

- Tableau was used to create both interactive and static visualizations based on the merged dataset wildfire_county_clean.csv

- Pandas, Python, and Jupyter Notebook was used for data cleansing. 

- Amazon web services and postgres SQL was used for database storage.

- K-means algorithm, PCA, RandomForestClassifier, GradientBoostingClassifier, and EasyEnsembleClassifier was used for machine learning.

### Description of Interactive Elements
- Acres Burned by County: this graph shows the acres burned for each year for each county. Using the pages feature, the toggle button can be used to show this for all of the counties individually or can be played for all of them. 

- California_County_Population: this chart shows the magnitude of the acres burned for the 5 counties with the most damage for 2018. The chart includes color differentiation based off of county population. Using the pages feature, the toggle button can be used to show each of the 5 counties or can be played for all of them. 


