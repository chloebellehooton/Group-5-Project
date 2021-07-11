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

## Model used

### Unsupervisedlearning Model

#### K-means algorithm is used to cluster the wildfires using the PCA data

1. Inputs used 
   
   - Maximium Temperature 
   - Cumulative sum of precipitation
  
 2. Pre processing done using the script :- https://github.com/chloebellehooton/Group-5-Project/blob/main/Clustering_wildfires_ML-Preprocessing.ipynb
  
 3. K-means algorithm is implented using the script:- https://github.com/chloebellehooton/Group-5-Project/blob/main/Clustering_ML.ipynb
 
 #### Summary of Analysis
 
 1. Elbow curve is created :- https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Wildfire_Cluster_Elbow_curve.png
 
 2. 4 Clusters are formed 
    ![image](https://github.com/chloebellehooton/Group-5-Project/blob/merin_anto/Wildfire_Cluster_3d.png)
 
 ### Supervisedlearning Model
 
 Classified very large fires as where acers burned greater than 10000
 
 RandomForestClassifier , GradientBoostingClassifier & EasyEnsembleClassifier will be used to predict the large wildfire.
 
 EasyEnsembleClassifier is having good prediction of  more large wildfire.
 
 
 
  
  
    
    
 
 
