# Group-5-Project
Shared repository for group 5 final project

## Objective of the project
Objective of the project is to find correlation between California wildfire and weather conditions.

## Techniques

1.ETL tools/methods like python pandas, postgres db will be used to extract data,cleanse and transform data and load.

2.Machine Learning models in python will be used to analyze if California Wildfire can be predicted based on weather conditions.

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

## Update in Machine Learning Model

 ## Machine Learning Model
  
 ### Feature Engineering/Selection
 
 After initial analysis of the data, team decided to run an unsupervised machine learning on the merged wildfire + weather information 
 so that the weather , county  & month of the year  will help to predict whether wildfires belong to which cluster/class.
 Later during the analysis it was derived  as though clusters are formed, discrete clusters are not formed.Hence as a different approach Supervised 
 Machine learning models are used to predict the large wildfires where acres burned greater than 10000.
 
 ### Unsupervisedlearning Model
 
  #### Intial Analysis
  
  To check if clusters/classification can be done, a small sub dataset(Napa county) was taken to consider.
  Unsupervised machine learning  was applied on Wildfire weather information of Napa county and 4 clusters were formed.
  The details of script :- https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/ML_Cluster_napa_TMAX_Median.ipynb
  https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/ML_Cluster_napa_TMAX_Median.ipynb 
  
  #### K-means algorithm is used to cluster the wildfires using the PCA data
 
 1. Inputs used 
   
   - Maximum Temperature 
   - Cumulative sum of precipitation
   - County 
   - Month of the year
   - Acres burned
  
 2. Pre processing done using the script :- https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Clustering_wildfires_ML-Preprocessing.ipynb
    In the pre processing script below steps are taken care.
    1. Data cleansing for ML , 
    2. Calculation rolling sum of precipiation in the postres DB
       SQL Query Details:-https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/rolling_sum_precipitation.sql
    3. Merged wildfire and weather data + weather data as required for ML.
    4. Created a copy wildfire and weather data + weather data used for ML analysis in local folder and postgresdb.
  
 3. K-means algorithm is implented using the script:- https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Clustering_ML.ipynb

 #### Summary of Analysis
 
 1. Elbow curve is created :- 
    ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Cluster_Elbow_curve.png)
 
 2. 4 Clusters are formed 
    ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Cluster_3d.png)
    
 3. Cluster/Class distribution county & time wise
    ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/class_county.png)    
    
 4. From clusters maximum temperature,precipitation received till the month , month of the year & county(location) has relation with acres burned,but clusters were not discrete
    Analysis of clusters shows some unaccounted factors also exist like  wind,lighting, human activities,PG&E power lines issues  .
 
 ## Supervisedlearning Model
 
 ### Analysis
 
 In this analysis wildfires where acres burned greater than 10000 are classified very large fires.
 
   - Among 1486 records , 79 records was having acres burned greater than 10000
 
   - Dataset was split into training and test set using module train_test_split from sklearn.
 
 RandomForestClassifier , GradientBoostingClassifier & EasyEnsembleClassifier models are used to predict the large wildfire.
 
 ### Summary Of Analysis
 
 Among the models RandomForestClassifier & GradientBoostingClassifier has good accuracy scores.
  
  - RandomForestClassifier Model Report
 
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire.png)
    
  - GradientBoostingClassifier Report
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire_gradientboost.png)
 
  EasyEnsembleClassifier has low accuracy store compared to other two models.But in predicting the large wildfires EasyEnsembleClassifier withmoreaccurcay.
  
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_very_large_fire_easyensemble.png)
  
  
  ### Tail End 
  
  Supervised models are used to predict when wildfires go beyond usual natural level(acers burned greater than 221)
  But classification reports showed the models are not as good in predicting the wildfires for acers greater than 221 as very large wildfires (acres burned greater than 10000).
  Factors like wind,lighting, human activities,PG&E power lines issues are not considered in the model.That can be a reason the models are not performing well.
  
  Details of Analysis 
  
  Script:- https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Supervised_Learning_Large_Wildfire.ipynb
  
   - RandomForestClassifier Model Report
   
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_large_fire_randomforest.png)
     
   - GradientBoostingClassifier Report
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_large_fire_gradientboost.png)
   
   -  EasyEnsembleClassifier Report
   ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Machine_Learning/Wildfire_Supervised_ML_large_fire_easyensemble.png)

    
 
  
  
    
    
 
 
