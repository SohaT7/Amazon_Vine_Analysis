# Amazon Vine Analysis
## Table of Contents
- [Overview of the Analysis](#overview-of-the-analysis)
    - [Purpose](#purpose)
    - [About the Dataset](#about-the-dataset)
    - [Tools Used](#tools-used)
    - [Description](#description)
- [Results](#results)
    - [The ETL Process](#the-etl-process)
    - [The Analysis](#the-analysis)
        - [Total Count](#total-count)
        - [Five Star Reviews Count](#five-star-reviews-count)
        - [Percentage of Five Star Reviews](#percentage-of-five-star-reviews)
- [Summary](#summary)
- [Contact Information](#contact-information)

## Overview of the Analysis
### Purpose:
The anlaysis aims to analyze the product reviews written by members of the paid Amazon Vine program, and determine if they are favorably biased as opposed to the ones written by non-vine members/customers.

### About the Dataset:
The dataset explored in this project looks at reviews written for video games.
This dataset was taken from [Amazon Review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt), which lists reviews for about 50 different products.
The schemata of the dataset is as follows:
![Dataset's schemata](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/schemata.png)

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
The four tables created are: [customers_table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/t_customers.png), [products_table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/t_products.png), [review_id_table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/t_review_ids.png), and [vine_table](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/t_vine.png).

### The Analysis:
Next, an analysis is run to determine is there is any favorable bias among the paid Vine reviews. To this end, [Vine_Review_Analysis.ipynb](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis.ipynb) uses PySpark,
[Vine_Review_Analysis_pandas.ipynb](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis_pandas.ipynb) uses Python's Pandas library, and [Vine_Review_Analysis.sql](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Vine_Review_Analysis.sql) uses SQL to run the same analysis. Either of these files can be viewed to understand the process.

#### Total Count:
One table was created for vine-only reviews, and one for non-vine-only reviews. There are a total of 40,565 reviews in the original vine_table, out of which 94 are vine reviews and 40,471 are non-vine reviews.

#### Five Star Reviews Count:
There are 15,711 five star reviews in all. There are 48 five star-vine reviews, and 15,663 five star-non-vine reviews.


![five star vine reviews count](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/fivestar_vine_count.png)

![five star non-vine reviews count](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/fivestar_nonvine_count.png)

#### Percentage of Five Star Reviews:
There percentage of five star vine reviews is 51.06%, and the percentage of five star-non-vine reviews is 38.70%.


![query_percentage five star vine reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/per_fivestar_vine_sql.png)

![query_percentage five star non-vine reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/per_fivestar_nonvine_sql.png)

![pandas_percentage five star both reviews](https://github.com/SohaT7/Amazon_Vine_Analysis/blob/main/Images/pandas_perfive.png)

## Summary
Since the percentage of five star reviews by Vine members (51.06%) is greater than the percentage of five star reviews by non-Vine members (38.70% only), we can deduce that there is in fact a positivity bias for reviews in the Vine program. A further analysis that can help shed more light on this can inlcude gauging the percentage of three stars or lower (or two stars or lower) reviews by Vine versus non-Vine members. 

## Contact Information
Email: st.sohatariq@gmail.com
