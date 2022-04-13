# before converting
supsto.ShipMode.unique()
# array(['Second Class', 'Standard Class', 'First Class', 'Same Day'],
#     dtype=object)
  
# alternative
ShipModes = supsto["ShipMode"]
ShipModes.drop_duplicates()
# 0        Second Class
# 3      Standard Class
# 35        First Class
# 366          Same Day
# Name: ShipMode, dtype: object
