/*
============================================================================================================================
Stored Procedure: Load the Bronze Layer
============================================================================================================================
Puurpose:
        Loads data from external CSV files.
        Performs TRUNCATE and BULK INSERT commands to load the data to the tables.
============================================================================================================================
How to Execute:
        EXEC bronze.load_bronze
*/


CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @load_start_time DATETIME, @load_end_time DATETIME;
	BEGIN TRY
	PRINT '====================================================================';
	PRINT 'LOADING BRONZE LAYER';
	PRINT '====================================================================';

	PRINT '--------------------------------------------------------------------';
	PRINT 'LOADING CRM TABLES'
	PRINT '--------------------------------------------------------------------';
	SET @load_start_time = GETDATE();
	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.crm_cust_info';
	TRUNCATE TABLE bronze.crm_cust_info;

	PRINT '>> INSERTING DATA INTO: bronze.crm_cust_info';
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_crm\cust_info.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';


	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.crm_prd_info';
	TRUNCATE TABLE bronze.crm_prd_info;

	PRINT '>> INSERTING DATA INTO: bronze.crm_prd_info';
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_crm\prd_info.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';

	
	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.crm_sales_details';
	TRUNCATE TABLE bronze.crm_sales_details;

	PRINT '>> INSERTING DATA INTO: bronze.crm_sales_details';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_crm\sales_details.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';

	
	PRINT '--------------------------------------------------------------------';
	PRINT 'LOADING ERP TABLES'
	PRINT '--------------------------------------------------------------------';
	
	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.erp_CUST_AZ12';
	TRUNCATE TABLE bronze.erp_CUST_AZ12;

	PRINT '>> INSERTING DATA INTO: bronze.erp_CUST_AZ12';
	BULK INSERT bronze.erp_CUST_AZ12
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_erp\CUST_AZ12.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';

	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.erp_LOC_A101';
	TRUNCATE TABLE bronze.erp_LOC_A101;

	PRINT '>> INSERTING DATA INTO: bronze.erp_LOC_A101';
	BULK INSERT bronze.erp_LOC_A101
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_erp\LOC_A101.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';

	SET @start_time = GETDATE();
	PRINT '>> TRUNCATING TABLE: bronze.erp_PX_CAT_G1V2';
	TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;

	PRINT '>> INSERTING DATA INTO: bronze.erp_PX_CAT_G1V2';
	BULK INSERT bronze.erp_PX_CAT_G1V2
	FROM 'C:\Users\damit\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\01_datasets\source_erp\PX_CAT_G1V2.csv'
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK);
	SET @end_time = GETDATE();
	SET @load_end_time = GETDATE();
	PRINT 'LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
	PRINT '-------------------------------------------------------------------------------------------'
	PRINT 'BRONZE LAYER LOADING COMPLETED!'
	PRINT 'TOTAL BRONZE LAYER LOAD DURATION: ' + CAST(DATEDIFF(second, @load_start_time, @load_end_time) AS NVARCHAR) + ' seconds.';
	END TRY
	BEGIN CATCH
		PRINT '===========================================================================';
		PRINT 'ERROR MESSAGE: ' + ERROR_MESSAGE();
		PRINT 'ERROR MESSAGE: ' + CAST(ERROR_NUMBER() AS NVARCHAR);
		PRINT 'ERROR MESSAGE: ' + ERROR_STATE();
		PRINT '===========================================================================';
	END CATCH;
END;
