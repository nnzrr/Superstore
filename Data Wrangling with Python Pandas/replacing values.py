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

# converting data without changing the data, to change the data using inplace=True
rename_ShipMode = supsto.ShipMode.replace({'Second Class': 'Regular',
                                           'Standard Class': 'Economy',
                                            'First Class': 'Prime'}, inplace=False)
rename_ShipMode.unique()
# array(['Regular', 'Economy', 'Prime', 'Same Day'], dtype=object)
