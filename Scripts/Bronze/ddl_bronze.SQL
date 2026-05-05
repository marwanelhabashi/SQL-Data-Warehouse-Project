-------creating stored procedure
create or alter procedure bronze.load_bronze as 
begin
 
	 ----bulk inserting the Data----

	bulk insert bronze.crm_cust_info
	from'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

	bulk insert bronze.crm_prd_info
	from 'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

	bulk insert bronze.crm_sales_details
	from 'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

	bulk insert bronze.erp_cust_az12
	from 'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.CSV'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

	bulk insert bronze.erp_loc_a101
	from 'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_erp\LOC_A101.CSV'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

	BULK INSERT bronze.erp_px_cat_g1v2
	from 'E:\CV\Data with Baraa\datawarehouse\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	with(
	firstrow = 2,
	fieldterminator =',',
	tablock
	);

end
