

-- ANALYSIS PHASE -------------------------------

-- Total Riders 

SELECT 
	COUNT(*) AS TotalRiders
FROM CombinedTable;

-- find out the total number of riders based on their membership type from your CombinedTableData

SELECT	
	MembershipType,
	COUNT(*) AS TotalRiders
FROM CombinedTableData
GROUP BY 
	MembershipType
ORDER BY 
	TotalRiders DESC;

-- the number of rides for each month to identify peak months for cycling.

SELECT 
	StartMonth,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	StartMonth
ORDER BY
	TotalRides;

-- the number of rides per day 

SELECT 
	StartDay,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	StartDay
ORDER BY
	TotalRides;


-- which  members take longer rides

SELECT
	MembershipType,
	COUNT(*) AS TotalRides,
	AVG(Duration) AS AvgDuration
FROM CombinedTableData
GROUP BY 
	MembershipType
ORDER BY 
	AvgDuration;

-- which bike types are most popular

SELECT 
	Bike_Type,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	Bike_Type
ORDER BY 
	TotalRides;


-- Which Bike type is Take longer ride


SELECT 
	Bike_Type,
	COUNT(*) AS TotalRides,
	AVG(Duration) AS AvgDoration
FROM CombinedTableData
GROUP BY 
	Bike_Type
ORDER BY 
	TotalRides DESC;

--  how long rides typically last in a month

SELECT 
	StartMonth,
	MIN(Duration) AS MinDuration,
	MAX(Duration) AS MaxDuration,
	AVG(Duration) AS AvgDuartion
FROM CombinedTableData
WHERE 
	Duration > 0
GROUP BY 
	StartMonth
ORDER BY 
	StartMonth;

-- Identify the hours of the day when most rides start

SELECT 
	StartTime,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	StartTime
ORDER BY 
	StartTime;
  
-- Identify  which parts of the day have the highest usage.

SELECT
	CASE
		WHEN StartTime BETWEEN '05:00:00' AND '11:59:59' THEN 'Morning'
        WHEN StartTime BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon'
        WHEN StartTime BETWEEN '17:00:00' AND '20:59:59' THEN 'Evening'
        ELSE 'Night'
    END AS TimeOfDay,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	CASE
    WHEN StartTime BETWEEN '05:00:00' AND '11:59:59' THEN 'Morning'
    WHEN StartTime BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon'
    WHEN StartTime BETWEEN '17:00:00' AND '20:59:59' THEN 'Evening'
    ELSE 'Night'
	END
ORDER BY 
	TotalRides DESC;
	

-- Identify the days with the highest number of rides across the year

SELECT 
	StartDate,
	COUNT(*) AS TotalRides
FROM CombinedTableData
GROUP BY 
	StartDate
ORDER BY 
	TotalRides DESC;



SELECT 
	
    DATENAME(WEEKDAY, StartDate) AS DayOfWeek,
    COUNT(*) AS TotalRides,
	MembershipType
FROM CombinedTableData
GROUP BY DATENAME(WEEKDAY, StartDate),
	MembershipType
ORDER BY TotalRides DESC;


SELECT 
    MembershipType,
    CASE 
        WHEN DATENAME(WEEKDAY, StartedTimeStamp) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS DayType,
    COUNT(*) AS RiderCount
FROM 
    CombinedTableData
GROUP BY 
    MembershipType,
    CASE 
        WHEN DATENAME(WEEKDAY, StartedTimeStamp) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END
ORDER BY 
    MembershipType, 
    DayType;






























