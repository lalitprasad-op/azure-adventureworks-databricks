# Implementation Notes

## Source → Bronze

AdventureWorks source files are dynamically ingested using Azure Data Factory and landed in ADLS Gen2 Bronze.

## Bronze → Silver

Azure Databricks reads Bronze data using Service Principal and Unity Catalog access patterns, applies PySpark transformations, and writes processed data to Silver.

## Silver → Business Views

Azure Synapse Serverless SQL reads curated ADLS data and exposes business-required columns through SQL views.

## Gold Serving

A database master key is configured as part of the external access setup and external tables are created over the Gold layer.

## Gold → Power BI

Power BI consumes analytics-ready data through the Synapse SQL endpoint.

