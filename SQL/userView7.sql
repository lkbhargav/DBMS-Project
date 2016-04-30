REM  ======================================
REM  FILE: userView7.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Inventory Report
REM  ======================================

SPOOL Reports/inventoryReport.log
SET LINESIZE 200

PROMPT ... creating User View 7: Inventory Report for Category 2...


COL categoryID HEADING "Category ID" FORMAT 99999
COL categoryName HEADING "Category Name" FORMAT A20
COL prodID HEADING "Product ID" FORMAT 99999
COL prodName HEADING "Product Name" FORMAT A20
COL prodDesc HEADING "Product Description" FORMAT A20
COL Quantity HEADING Quantity FORMAT 99999
COL cost HEADING "cost/piece" FORMAT $9,999.99
COL expectedIncome HEADING "Expected Income" FORMAT $99,999,999.99
COL sum(expectedIncome) HEADING "Total Assets" FORMAT $99,999,999.99

select categoryID, categoryName from inventoryCategory where categoryID=2
/ 

select p.prodID, p.prodName,p.prodDesc,p.Quantity,p.cost,p.expectedIncome from products p, inventoryCategory c where p.categoryID=c.categoryID and c.categoryID=2 order by p.prodID
/

select sum(expectedIncome)
from products where categoryID=2
/


SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (inventoryReport.log)  as a copy of this report

