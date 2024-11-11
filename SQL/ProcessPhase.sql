
-- PROCESS PHASE 

-- -----------------------------------
-- Changed coulmns Names ---------------------


EXEC sp_rename 'CombinedTableData.member_casual', 'MembershipType', 'COLUMN';
EXEC sp_rename 'CombinedTableData.rideable_type', 'Bike_Type', 'COLUMN';
EXEC sp_rename 'CombinedTableData.started_at', 'StartedTimeStamp', 'COLUMN';
EXEC sp_rename 'CombinedTableData.ended_at', 'EndedTimeStamp', 'COLUMN';


-- ADD New columns to CombinedTbledata

ALTER TABLE CombinedTableData
ADD 
    StartTime TIME,
	StartDate DATE,
    StartMonth NVARCHAR(50),
    StartDay NVARCHAR(50),
	ReturnTime TIME,
	ReturnDate DATE,
    ReturnMonth NVARCHAR(50),
    Returnday NVARCHAR(50);


-- Update the new columns with extracted values

UPDATE CombinedTableData
SET 
    StartDate = CAST(StartedTimeStamp AS DATE),
    StartTime = CAST(StartedTimeStamp AS TIME),
    StartMonth = DATENAME(MONTH, StartedTimeStamp),
    StartDay = DATENAME(WEEKDAY, StartedTimeStamp)
WHERE StartedTimeStamp IS NOT NULL;


UPDATE CombinedTableData
SET
	ReturnDate = CAST(EndedTimeStamp AS DATE),
	ReturnTime = CAST(EndedTimeStamp AS TIME),
	ReturnMonth = DATENAME(MONTH, EndedTimeStamp),
    Returnday = DATENAME(WEEKDAY, EndedTimeStamp)
WHERE EndedTimeStamp IS NOT NULL;


-- Identifying and Remove null Values 
-- ----------------------------------------------

SELECT *
FROM CombinedTableData
WHERE 
	Bike_Type IS NULL
	OR StartedTimeStamp IS NULL
	OR EndedTimeStamp IS NULL
	OR MembershipType IS NULL
	OR StartTime IS NULL
	OR StartDate IS NULL
    OR StartMonth IS NULL
    OR StartDay IS NULL
	OR ReturnTime IS NULL
	OR ReturnDate IS NULL
    OR ReturnMonth IS NULL
    OR Returnday IS NULL;

-- Identifying Dupicate values
-- --------------------------------------------------------------------



WITH CTE_Duplicates AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY 
                    Bike_Type,
                    StartedTimeStamp,
                    EndedTimeStamp,
                    MembershipType,
                    StartTime,
                    StartDate,
                    StartMonth,
                    StartDay,
                    ReturnTime,
                    ReturnDate,
                    ReturnMonth,
                    Returnday
               ORDER BY 
                    (SELECT NULL)
           ) AS RowNum
    FROM CombinedTableData
)
DELETE FROM CTE_Duplicates
WHERE RowNum > 1;


-- Add new column name to CombinedTableData

ALTER TABLE CombinedTableData
ADD Duration INT;


-- To insert or update data into the Duration column, where the value is the difference between StartedTimeStamp and EndedTimeStamp

UPDATE CombinedTableData
SET Duration = DATEDIFF(MINUTE, StartedTimeStamp, EndedTimeStamp)
WHERE StartedTimeStamp IS NOT NULL AND EndedTimeStamp IS NOT NULL;














   