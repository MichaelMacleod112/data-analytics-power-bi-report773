# Believe me I did not want to have to resort to this. I have tried using "column from examples", as well as many many attempts at writing an M query step that could extract the weight numeric values. I failed. 
# Completely inability to recognise the data pattern. Extremely simple if statements failing to extract the most basic single character values. I have spent too many hours on a stupid problem that python can solve in 5 minutes.

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