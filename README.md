# Data analytics - Power BI Report

### Contents


- [Introduction](#introduction)
- [Project Brief](#project-brief-business-intelligence-enhancement-with-power-bi)
- [Business Intelligence Report](#business-intelligence-report-dummy-sales-data)
  - [Report Structure](#report-structure)
- [File Contents](#file-contents)
  - [File Structure Tree](#file-structure-tree)
- [Usage](#usage)
- [Report Contents](#report-contents)
- [License](#license)

# Data Analytics - Power BI Report

Welcome to my Data Analytics Power BI project, a comprehensive business intelligence report created using Microsoft Power BI. This project focuses on enhancing business intelligence practices for a multinational company engaged in sales across diverse categories. By transforming historical sales data into actionable insights, the report aims to facilitate informed decision-making for C-suite executives.

## Project Highlights

- **Objective:** Transforming sales data into actionable insights using Power BI.
- **Key Deliverables:** A comprehensive quarterly report with a focus on high-level business summaries, customer insights, product performance analysis, and geographical performance mapping.
- **Approach:** Utilization of Power BI for data extraction, transformation, and report generation, employing a user-friendly star schema.
- **Success Metrics:** Positive feedback from executives, increased decision-making efficiency, and an enhanced understanding of customer behavior and product performance.

Explore the detailed report structure, file contents, and usage instructions to harness the full potential of this business intelligence tool.

# Project Brief: Business Intelligence Enhancement with Power BI

**Objective:**
Transform sales data into actionable insights for informed decision-making using Microsoft Power BI.

**Key Deliverables:**
- Comprehensive Quarterly Report:
  - Extract and transform data.
  - Implement a star schema for a robust data model.
- Multi-Page Executive Report:
  - High-level business summary.
  - Customer insights by sales region.
  - Product performance analysis.
  - Geographical performance map.

**Approach:**
Utilized Power BI for data extraction, transformation, and report generation. Implemented a user-friendly star schema.

**Timeline:**
Completed within [specified timeframe] to align with the client's business cycle.

**Success Metrics:**
- Positive feedback from C-suite executives.
- Increased efficiency in decision-making.
- Enhanced understanding of customer behavior and product performance.

**Next Steps:**
1. Initial client meeting to gather requirements.
2. Developed a detailed project plan with milestones.
3. Completed data extraction and transformation.
4. Designed and implemented the Power BI solution.
5. Regular progress updates and client reviews.
6. Finalized and delivered the comprehensive Quarterly Report.

This project has successfully elevated the client's business intelligence practices, providing a foundation for informed decision-making and improved overall performance.


# Business Intelligence Report: Dummy Sales Data

This repository comprises a comprehensive business intelligence report based on dummy sales data dating back to January 1, 2010. The data represents a multinational company engaged in sales across various categories. The dataset includes the following tables:

- **Orders Table:**
  Contains order information and serves as the central component of the star schema.

- **Products Table:**
  Includes product information and is linked to orders through product codes.

- **Stores Table:**
  Encompasses store information across three countries and is linked to orders via store codes.

- **Customers Table:**
  Contains customer information linked to orders through customer IDs.

## Report Structure

The report consists of four main pages, and with appropriate licensing, it can be exported from Power BI. It's important to note that the information provided is illustrative, and in-depth quantitative analysis is beyond the scope of this project.

For detailed insights and further analysis, additional licensing and exploration of the Power BI environment may be necessary.

## File Contents

- **report.pbix:**
  - Contains the primary information and visualization for the project.

- **/data/:**
  - Contains local data files used for analysis.
    - **/Customers/:**
      - Customer data split by country.
    - **products_orig.csv:**
      - Original products table as downloaded.
    - **products.csv:**
      - Processed products table after one-time script processing.
    - **stores.csv:**
      - Stores data.

- **product_script.py:**
  - A short script to extract and convert numeric values for weight initially stored in g, kg, and ml. This script does not need to be run.

- **/sql_queries/:**
  - Contains .sql queries used with access to an online copy of the data and the corresponding .csv files exporting their outputs.

- **/sql_col_names/:**
  - Contains CSV files, each containing the names of the columns found in the online copy of the data. Same credentials required as for running SQL queries.

- **/navigation_bar_images/:**
  - Contains .png files used as navigation buttons in the main report.

## File Structure Tree

```
.
├── report.pbix
├── data
│   ├── Customers
│   ├── products_orig.csv
│   ├── products.csv
│   └── stores.csv
├── product_script.py
├── sql_queries
├── sql_col_names
└── navigation_bar_images
```
## Usage

To view the report, you need to have a free version of Power BI installed. Download the main "report.pbix" file from the following link:

[Download link](https://www.microsoft.com/store/productId/9NTXR16HNW1T?ocid=pdpshare)

Please pay close attention to the data imports and follow these steps:

1. **Local Files:**
   - Download the local files along with the project from GitHub.
   - Ensure that the absolute file paths used during the import stage are edited in Power BI to reflect the save location on your machine.

2. **Server Credentials:**
   - Save server credentials inside Power BI.
   - If import fails, contact me at michaelmacleod13@live.com for assistance.

3. **SQL Files:**
   - Provided you have the correct server credentials, these files query an online database with a separate copy of the dataset and generate corresponding .csv files.

Ensure a smooth experience by verifying the successful import of local files and setting up server credentials. For any issues, feel free to contact me at michaelmacleod13@live.com.

## Report Contents

1. **Executive Summary**
   ![Executive Summary](/screenshots/exec_sum.png)

2. **Customer Page**
   ![Customer Page](/screenshots/customer_page.png)

3. **Product Page**
   ![Product Page](/screenshots/product_page.png)

4. **Store Map**
   ![Store Map](/screenshots/store_map.png)


## License

[MIT](https://choosealicense.com/licenses/mit/)

