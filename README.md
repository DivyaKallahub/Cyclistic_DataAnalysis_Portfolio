# Cyclistic Data Analytics Project: End-to-End Documentation


## 1. Project Overview
* **Repository Structure:**
```bash
├── SQL/                       # SQL queries used for data processing
├── Tableau Dashboards/         # Exported Tableau dashboards
├── README.md                  
```

* **Objective:** Analyze bike share data to understand usage patterns and provide business recommendations to increase membership.
  
* **Dataset:** Cyclistic bike share data for 2023 (monthly datasets) 
  
* **Tools Used:** SQL (SQL Server), Tableau, GitHub for version control.
  
* **Key Deliverables:** Insights on membership types, ride lengths, busiest times, most popular bike types, and more.

## 2. Step-by-Step Process

### 2.1 Data Collection
* **Source:** Publicly available Cyclistic bike share data for the year 2023. Refer link [here](https://divvy-tripdata.s3.amazonaws.com/index.html    )
  
* **Tools Used:** SQL Server, SQL Management Studio.
  
* **Key Tasks:**
  * Collected 12 individual CSV files (one for each month) and loaded them into SQL Server.
  * Created the **CombinedTableData** by merging data from each month.

### 2.2 Data Cleaning & Preprocessing
* **Objective:** Ensure data quality and consistency.
  
* **Steps Taken:**
    * Removed null values.
    * Checked for duplicates and removed them.
    * Created new calculated columns (StartDate, StartMonth, StartDay, ReturnTime, etc.).
    * Converted time fields (e.g., from 24-hour to 12-hour format).


### 2.3 Data Analysis
* **Objective:** Analyze ride trends, busiest times, popular bike types, etc.
  
* **Tools Used:** SQL and Tableau for visualization.
* **Key Insights:**

  * **Popular Bike Types:** Electric, Docked, and Classic. The most popular was Electric.
  
  * **Ride Duration Analysis:** Average ride duration was calculated, and trends were explored by membership type.
  
  * **Busiest Hours:** Found peak usage hours for both casual riders and members.
  
  * **Membership Patterns:** Compared casual and member rides based on duration, start times, and preferences.

### 2.4 Data Visualization
* **Objective:** Present findings through visualizations.
  
* **Tool Used:** Tableau.
  
* **Key Visualizations:**
    * **Bubble Chart:** Showed the average ride duration by membership type.
    * **Line Chart:** Displayed bike demand by hour.
    * **Bar Chart:** Compared the popularity of bike types.
    * **Text Table:** Highlighted the busiest hour and most popular bike type in text format.
    * **Logo Integration:** Added the Cyclistic logo to the dashboard and overlaid text "BikeShare" on top.

### 2.5 Findings and Recommendations
* **Findings:**
    * Casual riders tend to have longer rides but mostly use the service during off-peak hours.
    * Members consistently ride during peak commute hours (8 AM and 5 PM).
    * The most popular bike type is the Classic bike.
    * The busiest time is around 5 PM, coinciding with evening commutes.
* **Recommendations:**
  * Encourage casual riders to subscribe by offering discounts or promotions during peak hours.
  * Introduce more Classic bikes during high-demand periods to accommodate the most popular choice.
  * Enhance docking station availability near commuter hotspots to reduce congestion during peak hours.

### 2.6 Final Dashboard
* **Description:** The Tableau dashboard includes multiple charts (e.g., bubble chart, line chart) and text tables showing key insights like the busiest times, ride duration by membership type, and bike type preference.
