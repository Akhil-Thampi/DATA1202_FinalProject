# DATA1202_FinalProject

## Here we are using two excel files, one is the fact table and the other dimension table. In this project, we are using both SQL and Python to clean and retrieve essential information from the data set

### SQL File

## Basic Select Statement

SELECT * 
FROM onlinedataretail odr
INNER JOIN customernames cn
ON odr.CustomerID=cn.CustomerID
LIMIT 20

## Which one among the products are the most purchased one?

SELECT Description, SUM(Quantity) AS TotalPurchased
FROM onlinedataretail odr
INNER JOIN customernames cn
ON odr.CustomerID=cn.CustomerID
GROUP BY StockCode, Description
ORDER BY TotalPurchased DESC
LIMIT 1;

## Script to create View Table
CREATE VIEW OrderSummary AS
SELECT *
FROM
    onlinedataretail odr
JOIN
    customernames cn
    ON odr.CustomerID = cn.CustomerID

SELECT * FROM OrderSummary




### Visual Studio Files

## importing libraries

import pandas as pd 
import numpy as np 


## reading the dataset

df= pd.read_excel('Online Retail Data Set 2.xlsx')
df.head(5)
df.shape
df.dtypes

## checking for null values

df.isnull().sum()

## dropping the null values and changing the data types

df_1 = df.dropna()
df_1.shape
df_1.isnull().sum()

## creating a copy of df_1

df_2=df_1.copy()

df_2['CustomerID']=df_2['CustomerID'].astype(int)
df_2.dtypes

