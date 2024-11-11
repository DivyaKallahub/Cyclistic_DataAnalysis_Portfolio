
CREATE TABLE CombinedTableData (
    rideable_type VARCHAR(255), 
    started_at DATETIME2, 
    ended_at DATETIME2, 
    member_casual VARCHAR(50)
);

SELECT * FROM CombinedTableData;

SELECT COUNT(*) FROM CombinedTableData;

-- INSERT DATA -- -------------------------------------------------


INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202301-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202302-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202303-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202304-divvy-tripdata];


INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202305-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202306-divvy-tripdataa];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202307-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202308-divvy-tripdataa];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202309-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202310-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202311-divvy-tripdata];

INSERT INTO CombinedTableData( rideable_type, started_at, ended_at, member_casual)
SELECT  rideable_type, started_at, ended_at, member_casual
FROM dbo.[202312-divvy-tripdata];