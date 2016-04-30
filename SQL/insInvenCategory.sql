REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================

prompt ... creating table Inventory category...

INSERT INTO inventoryCategory VALUES(1,'Development Boards');
INSERT INTO inventoryCategory VALUES(2,'Analog Components');
INSERT INTO inventoryCategory VALUES(3,'Digital Components');
INSERT INTO inventoryCategory VALUES(4,'Sensors');
INSERT INTO inventoryCategory VALUES(5,'Discrete Components');