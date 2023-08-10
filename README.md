# DATA1202_FinalProject


### py file

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

