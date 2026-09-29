CREATE SCHEMA Gold

CREATE VIEW gold.calendar
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Calendar/',
    FORMAT = 'PARQUET'
) as cal


CREATE VIEW gold.Customers
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Customers/',
    FORMAT = 'PARQUET'
) as cus


CREATE VIEW gold.Product_Categories
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Product_Categories/',
    FORMAT = 'PARQUET'
) as pc


CREATE VIEW gold.Product_Subcategories
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) as psc


CREATE VIEW gold.Products
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Products/',
    FORMAT = 'PARQUET'
) as prod


CREATE VIEW gold.Returns
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
) as ret


CREATE VIEW gold.Sales
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Sales/',
    FORMAT = 'PARQUET'
) as Sales

CREATE VIEW gold.Territories
AS
select *
FROM
OPENROWSET(
    BULK 'https://storagedatalakelalit.dfs.core.windows.net/silver/Territories/',
    FORMAT = 'PARQUET'
) as Territories