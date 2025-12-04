/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [db_churn_analysis].[dbo].[stg_churn_data]

------------------------ EDA -------------------------------
SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from [stg_churn_data])  as Percentage
from [stg_churn_data]
Group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract)* 100.0 / (Select Count(*) from [stg_churn_data])  as Percentage
from [stg_churn_data]
Group by Contract

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from [stg_churn_data]) * 100  as RevPercentage
from [stg_churn_data]
Group by Customer_Status


SELECT State, Count(State) as TotalCount,
Count(State)* 100.0 / (Select Count(*) from [stg_churn_data])  as Percentage
from [stg_churn_data]
Group by State
Order by Percentage desc

----------------------------- DATA TRANSFORMATION ---------------------------------
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    ISNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    ISNULL(Multiple_Lines, 'No') As Multiple_Lines,
    Internet_Service,
    ISNULL(Internet_Type, 'None') AS Internet_Type,
    ISNULL(Online_Security, 'No') AS Online_Security,
    ISNULL(Online_Backup, 'No') AS Online_Backup,
    ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    ISNULL(Premium_Support, 'No') AS Premium_Support,
    ISNULL(Streaming_TV, 'No') AS Streaming_TV,
    ISNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    ISNULL(Streaming_Music, 'No') AS Streaming_Music,
    ISNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    ISNULL(Churn_Category, 'Others') AS Churn_Category,
    ISNULL(Churn_Reason , 'Others') AS Churn_Reason
INTO [db_churn_analysis].[dbo].[prod_churn_data]
FROM [db_churn_analysis].[dbo].[stg_churn_data];


---------- CREATE VIEWS FOR TRAINING MODEL FOR FORCASTING -------------------------------

Create View vw_ChurnData as
    select * from prod_Churn_data where Customer_Status In ('Churned', 'Stayed')

Create View vw_JoinData as
    select * from prod_Churn_data where Customer_Status = 'Joined'

Select * from [prod_churn_data];

Select * from vw_ChurnData;

Select * from vw_JoinData;