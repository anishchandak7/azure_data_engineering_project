Overall 4 notebooks were used for data transformation:
1. mount_storage.ipynb:
     * To mount the containers (bronze, silver, gold) to DBFS.
2. bronze_to_silver.ipynb:
     * To transform all date fields in each table from the bronze layer and store at silver location.
3. silver_to_gold.ipynb:
     * To rename the headers of all tables from silver layer, format it and store at gold location.
4. data_check.ipynb:
    * To analyze the data.
