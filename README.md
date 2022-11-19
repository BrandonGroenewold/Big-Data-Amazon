# Big Data Amazon Database

## Skills/Languages Used: PySpark, Google Colab, Python, SQL, PostgreSQL

## Background

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. They are quite large and can exceed the capacity of local machines. One dataset alone contains over 1.5 million rows; with over 40 datasets, data analysis can be very demanding on the average local computer. Google colab will be used to upload DataFrames to an RDS instance. Then PySpark and SQL to perform a statistical analysis of the selected data.

## Steps

### Part 1

* Use the provided schema to create tables in your RDS database.

* Create a Google Colab notebook and **extract** any two datasets from the list at [review dataset](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt).

* Be sure to handle the header correctly. If you read the file without the header parameter, you may find that the column headers are included in the table rows.

* Complete the following steps for the notebook.

  * Count the number of records (rows) in the dataset to see how much data you are working with.

  * Transform the dataset to fit the tables in the [schema file](../Resources/schema.sql). Be sure that the DataFrames match in data type and in column name.

  * Load the DataFrames that correspond to tables into an RDS instance. **Note:** This process can take up to 10 minutes for each. Ensure that everything is correct before uploading.

### Part 2

In Amazon's Vine program, reviewers receive free products in exchange for reviews.

  ![vine01.png](Big-Data-Amazon/Images/vine01.png)

Amazon has several policies to reduce the bias of its Vine reviews: [https://www.amazon.com/gp/vine/help?ie=UTF8](https://www.amazon.com/gp/vine/help?ie=UTF8).

But are Vine reviews truly trustworthy? Using PySpark and SQL the data will be analyzed.

* If you choose SQL, first use Spark on Colab to extract and transform the data and then load it into a SQL table on your RDS account. Perform your analysis with SQL queries on RDS.

* While there are no strict requirements for the analysis, consider steps you can take to reduce noisy data, such as filtering for reviews that meet a certain number of helpful votes, total votes, or both.

* Submit a summary of your findings and analysis.

- - -

## To get you started if you are recreating this

* Start each notebook with the following code in the first cell, and be sure to update the Spark version.

```python
import os
# Find the latest version of spark 3.2  from http://www.apache.org/dist/spark/ and enter as the spark version
# For example:
# spark_version = 'spark-3.2.2'
spark_version = 'spark-3.<spark version>'
os.environ['SPARK_VERSION']=spark_version

# Install Spark and Java
!apt-get update
!apt-get install openjdk-11-jdk-headless -qq > /dev/null
!wget -q http://www.apache.org/dist/spark/$SPARK_VERSION/$SPARK_VERSION-bin-hadoop2.7.tgz
!tar xf $SPARK_VERSION-bin-hadoop2.7.tgz
!pip install -q findspark

# Set Environment Variables
import os
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-11-openjdk-amd64"
os.environ["SPARK_HOME"] = f"/content/{spark_version}-bin-hadoop2.7"

# Start a SparkSession
import findspark
findspark.init()
```

* For connection to Postgres, run the following code in the next cell.

```python
!wget https://jdbc.postgresql.org/download/postgresql-42.2.9.jar
```

- - -


