# Data analytics - Power BI Report

This project contains a complete business intelligence report on dummy sales data dating back to 1st Jan 2010, for a multinational company involved in sales across a variety of categories. The data consists of:
- orders table: contains order information and forms the centre of the star schema
- products table: contains product information, linked to orders through product code
- stores table: contains store information spanning 3 countries, linked to orders via store code
- customers table: contains information of customers, linked to orders via customer ID

The report contains four main pages, and with suitable licencing could be exported from power BI. Most of the information is illustrative, in depth quantitative analysis is outside the scope of this project.

## Usage
There are a number of peripheral files contained, but to view the report all that is needed is a free version of power BI installed and to open the main "report.pbix" file. Pay close attention to the data imports.

Checking data files have been successfully imported:
- Local files: these should be downloaded with the rest of the project as cloned from github, however Power BI may require the absolute file paths used at the import stage to be edited to reflect the save location on your machine.
- Server credentials should be saved power BI and import successfully, contact me at michaelmacleod13@live.com if this fails 

SQL files - provided you have the correct server credentials, these files are used to query an online database containing a separate copy of the dataset, and generate the corresponding .csv files.

## File Contents

- report.pbix - contains the bulk of the information in this project
 - /data/ - contains local data files which make up part of the data used for analysis. 
    - /Customers/ - customer data
    - products_orig.csv - products table as downloaded
    - products.csv - products table after one-time processing by a short script
    - stores.csv - stores data
 - product_script.py - very short script to extract and convert numeric values for weight which are initially stored in g, kg and ml. This script does not need to be run.
 - /sql_queries/ - contains .sql queries used with access to an online copy of the data and the corresponding .csv files exporting their outputs
 - /sql_col_names/ - contains csv files each containing the names of the columns which may be found in the online copy of the data. Same credentials required as for running SQL queries.
 - /navigation_bar_images/ - contains .png files used as navigation buttons in the main report

## Installation

Add if necessary
    
## License

[MIT](https://choosealicense.com/licenses/mit/)

