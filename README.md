# Amazon Vine Analysis
## Overview of the Analysis
### Purpose:
The anlaysis aims to analyze the product reviews written by members of the paid Amazon Vine program, and determine if they are favorably biased as opposed to the ones written by non-vine members/customers.

### About the Dataset:
The dataset explored in this project looks at reviews written for video games.
This dataset was taken from [Amazon Review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt), which lists reviews for about 50 different products.
The schemata of the dataset is as follows:
![Dataset's schemata]()

### Tools Used:
 - Amazon Web Services (AWS)
 - PySpark
 - Python (Pandas)
 - SQL
 - pgAdmin
 - Google Colab notebook
 - Jupyter notebook
 - VS Code

### Description:
This project runs the analysis using three different technologies (for experimentation's sake - either produces sufficient results):
 - PySpark
 - Python (Pandas)
 - SQL
PySpark is used to perform the ETL (Extract, Transform, and Load) to extract the particular dataset, transform it, connect to a AWS RDS (Relational Database Services) instance, and then load that transformed dataset into pgAdmin. 
Next, either Pyspark, Pandas, or SQL have been used to analyze the data in order to determine if there is a bias towards writing favorable reviews among Vine (versus non-Vine) members.

## Results
### The ETL Process:
[Amazon_Reviews_ETL.ipynb](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Amazon_Reviews_ETL.ipynb) shows how the ETL process was used to extract the video games dataset, transform it into four different tables, and then load these four tables into pgAdmin.
The four tables created are: customers_table, products_table, review_id_table, and vine_table.
![Customers Table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/table_customers.png)
![Products Table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/table_products.png)
![Review IDs Table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/table_review_ids.png)
![Vine Table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/table_vines.png)

### The Analysis:
Next, an analysis is run to determine is there is any favorable bias among the paid Vine reviews. To this end, [Vine_Review_Analysis.ipynb](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis.ipynb) uses PySpark,
[Vine_Review_Analysis_pandas.ipynb](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis_pandas.ipynb) uses Python's Pandas library, and [Vine_Review_Analysis.sql](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis.sql) uses SQL to run the same analysis. Either of these files can be viewed to understand the process.

One table was created for vine-only reviews, and one for non-vine-only reviews. 
The table for vine-only and non-vine-only reviews are shown below:
![Vine-only Reviews Table]()
![Non-vine-only Reviews Table]()
There are a total of 40,565 reviews in the original vine_table, out of which 94 are vine reviews and 40,471 are non-vine reviews.

There are 15,711 five star reviews in all. There are 48 five star-vine reviews, and 15,663 five star-non-vine reviews.
![five star vine reviews count](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/fivestar_vine_count.png)
![five star non-vine reviews count](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/fivestar_nonvine_count.png)

There percentage of five star vine reviews is XXX, and the percentage of five star-non-vine reviews is XXX.
![query_percentage five star vine reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/per_fivestar_vine_sql.png)
![query_percentage five star non-vine reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/per_fivestar_nonvine_sql.png)
![pandas_percentage five star both reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/per_fivestar_both_pandas.png)

## Summary

## Contact Information
Email: st.sohatariq@gmail.com
