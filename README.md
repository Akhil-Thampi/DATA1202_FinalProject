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


