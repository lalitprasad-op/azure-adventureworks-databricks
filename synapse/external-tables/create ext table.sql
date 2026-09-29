create MASTER KEY ENCRYPTION BY PASSWORD ='***Redacted***';

CREATE DATABASE SCOPED CREDENTIAL cred_lalit
WITH
 IDENTITY = 'Managed Identity'
 
CREATE EXTERNAL DATA SOURCE source_silver
 WITH 
 (
    LOCATION = 'https://storagedatalakelalit.dfs.core.windows.net/silver',
    CREDENTIAL = cred_lalit
 )

CREATE EXTERNAL DATA SOURCE source_gold
 WITH 
 (
    LOCATION = 'https://storagedatalakelalit.dfs.core.windows.net/gold',
    CREDENTIAL = cred_lalit
 )

--Create an external file format for PARQUET files.
CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
         FORMAT_TYPE = PARQUET, 
         DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
       
);

--creating external tables
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION='extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales

SELECT * from gold.extsales;


