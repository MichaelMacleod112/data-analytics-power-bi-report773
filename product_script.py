# Short script to strip numeric values from "weight" column of the products table, as Power BI cannot seem to handle it properly


import pandas as pd
import re

dataset = pd.read_csv("data\Products_orig.csv", index_col=None)

weight_column = dataset['weight']

pattern = r'(\d+(\.\d+)?)'  

def extract_and_convert(s):
    match = re.search(pattern, str(s))
    if match:
        numeric_value = float(match.group(1))
        if "kg" in str(s):
            return numeric_value
        elif "g" in str(s):
            return numeric_value / 1000
        elif "ml" in str(s):
            return numeric_value / 1000
    return None

dataset['Weight/kg'] = weight_column.apply(extract_and_convert)

# dataset.to_csv("data\Products.csv", index=False)

##