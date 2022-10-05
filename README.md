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
[Amazon_Reviews_ETL.ipynb]() shows how the ETL process was used to extract the video games dataset, transform it into four different tables, and then load these four tables into pgAdmin.
The four tables created are: customers_table, products_table, review_id_table, and vine_table.

Next, an analysis is run to determine is there is any favorable bias among the paid Vine reviews. To this end, [Vine_Review_Analysis.ipynb]() uses PySpark,
[Vine_Review_Analysis_pandas.ipynb]() uses Python's Pandas library, and [Vine_Review_Analysis.sql]() uses SQL to run the same analysis. Either of these files can be viewed to understand the process.

## Summary

## Contact Information
Email: st.sohatariq@gmail.com
