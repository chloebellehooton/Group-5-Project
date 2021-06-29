-- Creating tables for wildfire data
CREATE TABLE wildfire(
	INDEX INT NOT NULL,
	"AcresBurned" FLOAT8,
	"ArchiveYear" INT,
	"Counties" VARCHAR,
	"CountyIds" VARCHAR,
	"CrewsInvolved" FLOAT8,
	"Fatalities" FLOAT8,
	"Latitude" FLOAT8,
	"Longitude" FLOAT8,
	"Name" VARCHAR,
	"PersonnelInvolved" FLOAT8,
	"Started" TIME,
	"StructuresDamaged" FLOAT8,
	"StructuresDestroyed" FLOAT8,
	"UniqueId" VARCHAR,
	"Year" INT,
	"Month" VARCHAR,
	"Year-Month" VARCHAR,
	PRIMARY KEY ("UniqueId")
);

SELECT * FROM wildfire;

CREATE TABLE countyWeather(
	INDEX INT NOT NULL,
	"STATION" VARCHAR,
	"NAME" VARCHAR,
	"LATITUDE" FLOAT8,
	"LONGITUDE" FLOAT8,
	"DATE" VARCHAR,
	"PRCP" FLOAT8,
	"TMAX" FLOAT8,
	"COUNTY" VARCHAR,
	"MEDIAN_TMAX" FLOAT8,
	"MAXIM_TMAX" FLOAT8,
	"MEAN_PRCP" FLOAT8,
	"SUM_PRCP" FLOAT8,
	PRIMARY KEY ("STATION", "DATE", "COUNTY")
);

SELECT * FROM countyWeather;
