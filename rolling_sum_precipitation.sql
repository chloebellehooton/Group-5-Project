select * from new_wthr;

--Changing the Year & Month to integer type 

ALTER TABLE new_wthr 
    ALTER COLUMN "Year" TYPE INT USING ("Year"::integer) ;
ALTER TABLE new_wthr 
    ALTER COLUMN "Month" TYPE INT  USING ("Month"::integer) ;


SELECT "YearMonth","COUNTY","MEDIAN_TMAX","MAXIM_TMAX","MEAN_PRCP","SUM_PRCP","Year","Month"
     , avg("MEAN_PRCP") OVER (PARTITION BY "COUNTY","Year"
                         ORDER BY "Month") AS cum_amt
FROM   new_wthr
ORDER  BY "COUNTY","Year" ,"Month";

--- New weather table created new_wthr_cumsum with rolling prceipitation sum

CREATE TABLE new_wthr_cumsum as 
SELECT "Year-Month","COUNTY","MEDIAN_TMAX","MAXIM_TMAX","MEAN_PRCP","SUM_PRCP","Year","Month"
     , sum("MEAN_PRCP") OVER (PARTITION BY "COUNTY","Year"
                         ORDER BY "Month") AS cum_prcp
FROM   new_wthr
ORDER  BY "COUNTY","Year" ,"Month";