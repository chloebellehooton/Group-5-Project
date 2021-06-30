-- Join wildfire and county weather data
SELECT
	wf."AcresBurned",
	wf."Counties",
	wf."CrewsInvolved",
	wf."Fatalities",
	wf."Latitude",
	wf."Longitude",
	wf."Name",
	wf."PersonnelInvolved",
	wf."Started",
	wf."StructuresDamaged",
	wf."StructuresDestroyed",
	wf."UniqueId",
	wf."Year-Month",
	cw."STATION",
	cw."NAME",
	cw."LATITUDE",
	cw."LONGITUDE",
	cw."DATE",
	cw."PRCP",
	cw."TMAX",
	cw."COUNTY",
	cw."MEDIAN_TMAX",
	cw."MAXIM_TMAX",
	cw."MEAN_PRCP",
	cw."SUM_PRCP"
INTO wildfire_county_weather
FROM countyWeather cw
INNER JOIN wildfire wf
ON wf."Counties" = cw."COUNTY"
WHERE (wf."Year-Month" = cw."DATE");

SELECT * FROM wildfire_county_weather;

-- Largest fires
SELECT 
	wf."AcresBurned",
	wf."Counties",
	wf."Name",
	wf."UniqueId"
INTO wildfire_largest
FROM wildfire wf
ORDER BY wf."AcresBurned" DESC;

SELECT * FROM wildfire_largest;

-- Counties with most acres burned
SELECT 
	wf."Counties",
		SUM(wf."AcresBurned") AS TotalAcresBurned
INTO county_total_acres
FROM wildfire wf
GROUP BY wf."Counties"
ORDER BY SUM(wf."AcresBurned") DESC;