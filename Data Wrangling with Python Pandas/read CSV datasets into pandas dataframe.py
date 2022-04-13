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
