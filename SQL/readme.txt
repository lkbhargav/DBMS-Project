
		Create A N D Technologies (P) Ltd Database

1.  Make a myFinalProjectANDTechStore folder on your hard drive.  Make a sql and data folder inside of it. Copy the sql files found in the zipped mvhospital file into the sql folder.

2.  Go into the data folder of myFinalProjectANDTechStore and copy the path to this folder.

3.  Go into the sql folder of myFinalProjectANDTechStore and edit the createTablespace.sql file. Paste the new path into DATAFILE line, showing where the ANDTECHSTORE.dbf file should be created.

4.  Save this file, using File> Save.

5.  Right click inside the sql folder to create a shortcut to your sqlPlus.exe file.  
    Find sqlPlus.exe (Select c:\oraclexe\app\oracle\product\11.2.0\server\bin\sqlPlus.exe)
    Select the Next button, and then the Finish button.

6.  Right click on the sqlplus.exe shortcut.  Select properties.  Delete start-in content.

7.  Double click on sqlplus.exe file and login as system/admin.

NOTE: YOU CAN BYPASS Following Steps BY RUNNING run.sql, it will take care of everything like creating tablespace, user, table and inserting data into tables and also it will generate userviews for you. 

8.  Run the createTablespace.sql file.

9.  Run the createUser.sql file

10. Login as ANDTechDBA/ANDTechDBA

11. Run the file createTables.sql file to create the tables.

12.  The 7 userviews.sql files have been created. 
       Files:    userView1.using sql, userView2.sql, userView3.sql, userView4.sql, userView5.sql, userView6.sql and userView7.sql  

       Run them to generate the 4 reports for each of the user views. 
	Note:   @userview1.sql  executes userview1.sql
	When executed it will create reports in Report folder that you could print anytime.  
	They will be called: employeePayslip.log, invoice.log, membershipPlanReport.log, customerOrderHistory.log, purchaseOrders.log, shippingLabel.log and inventoryReport.log
	
13.  When done with this application, connect as the system administrator and run the dropTablespace.sql file to delete all the files inside of the tablespace and check to see if the tablespace or dbf file from the data folder is gone.

