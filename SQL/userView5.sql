REM  ======================================
REM  FILE: userView5.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Purchase Orders
REM  ======================================

SPOOL Reports/purchaseOrders.log
SET LINESIZE 200

PROMPT ... creating User View 5: Purchase Orders for OM Electronics(Vendor ID: 4150)...


COL empID HEADING "Employee ID" FORMAT 9999
COL vendorID HEADING "Vendor ID" FORMAT 9999
COL vendorName HEADING "Vendor Name" FORMAT A15
COL vendorAdd HEADING "Vendor Address" FORMAT A20
COL vendorPhone HEADING "Contact No" FORMAT 999999999999999
COL prodID HEADING "Product ID" FORMAT 9999
COL prodName HEADING "Product Name" FORMAT A12
COL prodDesc HEADING "Product Description" FORMAT A22
COL Quantity HEADING "Quantity" FORMAT 9999
COL cost HEADING "Cost/piece" FORMAT $99,999,999.99
COL totalCost HEADING "Total Cost" FORMAT $99,999,999.99
COL sum(totalCost) HEADING "Total Purchases" FORMAT $99,999,999.99

select v.vendorID, v.vendorName, v.vendorAdd, v.vendorPhone from vendor v where vendorID = 4150
/
select p.prodID, p.prodName, p.prodDesc, pu.Quantity, pu.cost, pu.totalCost from purchaseOrder pu, products p, vendor v where v.vendorID=pu.vendorID and p.prodID=pu.prodID and v.vendorID=4150 ORDER BY p.prodID
/
select sum(totalCost)
from purchaseOrder where vendorID = 4150
/
SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (purchaseOrders.log)  as a copy of this report

