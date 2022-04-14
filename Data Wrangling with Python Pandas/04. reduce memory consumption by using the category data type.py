# before reducing memory consumption
supsto.memory_usage(deep=True)
# Index              128
# RowID            79952
# OrderID         709574
# OrderDate       660264
# ShipDate        660366
# ShipMode        697812
# CustomerID      649610
# CustomerName    701323
# Segment         657979
# Country         699580
# City            662909
# State           654479
# PostalCode       79952
# Region          618223
# ProductID       719568
# Category        697607 <<<
# SubCategory     641532 <<<
# ProductName     947872
# Sales            79952
# Quantity         79952
# Discount         79952
# Profit           79952
# dtype: int64# 

supsto.memory_usage(deep=True).sum() / 1_000_000
# 10.171238

# converting Category and SubCategory  column from object data type to category data type
supsto[['Category', 'SubCategory']] = supsto[['Category', 'SubCategory']].astype('category')

# after reducing memory consumption
supsto.memory_usage(deep=True)
# Index              128
# RowID            79952
# OrderID         709574
# OrderDate       660264
# ShipDate        660366
# ShipMode        697812
# CustomerID      649610
# CustomerName    701323
# Segment         657979
# Country         699580
# City            662909
# State           654479
# PostalCode       79952
# Region          618223
# ProductID       719568
# Category         10307 <<<
# SubCategory      11647 <<<
# ProductName     947872
# Sales            79952
# Quantity         79952
# Discount         79952
# Profit           79952
# dtype: int64# 
