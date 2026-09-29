# Azure AdventureWorks Data Engineering Platform

End-to-end Azure data engineering project implementing a Bronze → Silver → Gold architecture using Azure Data Factory, ADLS Gen2, Azure Databricks, Unity Catalog, Azure Synapse Serverless SQL and Power BI.

## Architecture

AdventureWorks Source Files → Azure Data Factory → ADLS Gen2 Bronze → Azure Databricks → ADLS Gen2 Silver → Synapse Serverless SQL → Gold External Tables → Power BI

See architecture/architecture.svg for the detailed architecture diagram.

## What Was Implemented

### Dynamic Ingestion — Azure Data Factory
- AdventureWorks source datasets are maintained as source files.
- Built a dynamic ADF ingestion pipeline to process multiple files.
- Source data is landed into the ADLS Gen2 Bronze layer.

### Bronze Layer — ADLS Gen2
The Bronze layer acts as the raw/landing layer and preserves source data before transformation.

### Transformation — Azure Databricks
- Bronze data is read from ADLS.
- Service Principal based access is implemented.
- Unity Catalog based access is implemented.
- PySpark transformations are applied.
- Cleaned/transformed data is written to Silver.

### Silver Layer — ADLS Gen2
The Silver layer contains processed and transformed datasets ready for downstream SQL consumption.

### Serving — Azure Synapse
- Synapse Serverless SQL reads curated ADLS data.
- Business-required columns are exposed through SQL views.
- A database master key is configured for external data access.
- External tables are created over the Gold layer.

### Gold Layer
The Gold layer represents the business/analytics-ready serving layer exposed through the Synapse SQL endpoint.

### Power BI
Power BI consumes curated Gold data through the Synapse SQL endpoint for reporting and analytics.

## Technology Stack

| Component | Role |
|---|---|
| AdventureWorks | Source dataset |
| Azure Data Factory | Dynamic ingestion & orchestration |
| ADLS Gen2 | Bronze / Silver / Gold storage |
| Azure Databricks | Data processing |
| PySpark | Transformations |
| Unity Catalog | Governance & data access |
| Service Principal | Secure resource authentication |
| Azure Synapse Analytics | Serverless SQL serving |
| Power BI | Reporting & visualization |

## Security

No credentials or secrets are included in this repository. Never commit Service Principal secrets, storage keys, SAS tokens, connection strings, passwords or access tokens.

## Portfolio Evidence

Add screenshots for ADF dynamic pipeline, ADLS Bronze/Silver/Gold folders, Databricks transformations and Unity Catalog, Synapse views/external tables, and the Power BI dashboard.

## Author

**Lalit Prasad**

Data Engineering | Azure | Databricks | SQL | SAS | ETL
