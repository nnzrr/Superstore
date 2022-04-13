import numpy as np
import pandas as pd
supsto = pd.read_csv("e:/SampleSuperstore.csv", encoding='windows-1252')

print(supsto.shape)
# (9994, 21) (number of rows, number of columns)
# alternatives, print(supsto.shape[0]) number of rows or print(supsto.shape[0]) number of columns

supsto.columns
# Index(['Row ID', 'Order ID', 'Order Date', 'Ship Date', 'Ship Mode',
#      'Customer ID', 'Customer Name', 'Segment', 'Country', 'City', 'State',
#       'Postal Code', 'Region', 'Product ID', 'Category', 'Sub-Category',
#      'Product Name', 'Sales', 'Quantity', 'Discount', 'Profit'],
#     dtype='object')

supsto.dtypes
# Row ID             int64
# Order ID          object
# Order Date        object
# Ship Date         object
# Ship Mode         object
# Customer ID       object
# Customer Name     object
# Segment           object
# Country           object
# City              object
# State             object
# Postal Code        int64
# Region            object
# Product ID        object
# Category          object
# Sub-Category      object
# Product Name      object
# Sales            float64
# Quantity           int64
# Discount         float64
# Profit           float64
# dtype: object
