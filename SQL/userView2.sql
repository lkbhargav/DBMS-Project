REM  ======================================
REM  FILE: userView2.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Invoice
REM  ======================================

SPOOL Reports/invoice.log
SET LINESIZE 200

PROMPT ... creating User View 2: Invoice for Ramakrishna (Customer ID: 1007)...


COL empID HEADING "Employee ID" FORMAT 99999999
COL invoiceNUM HEADING "Invoice ID" FORMAT 99999
COL prodID HEADING "Product ID" FORMAT 99999
COL cusID HEADING "Customer ID" FORMAT 99999
COL cusName HEADING "Customer Name" FORMAT A15
COL prodName HEADING "Product Name" FORMAT A20
COL cusAdd HEADING "Customer Address" FORMAT A20
COL cusPhone HEADING "Contact Number" FORMAT A15
COL invoiceDate HEADING "Invoice Date" FORMAT A12
COL invoiceShippedDate HEADING "Shipped Date" FORMAT A12
COL paymentStatus HEADING "Pay Status" FORMAT A12
COL payMethod HEADING "Pay Method" FORMAT A12
COL shippingSpeed HEADING "Shipping Speed" FORMAT A20
COL prodDesc HEADING "Product Description" FORMAT A20
COL Quantity HEADING "Quantity" FORMAT 9999
COL cost HEADING "Total Cost" FORMAT $9999.99
COL sum(cost) HEADING "Grand Total" FORMAT $9,999.99

select DISTINCT i.invoiceNum, i.invoiceDate, i.invoiceShippedDate, i.payMethod, i.paymentStatus, i.shippingspeed from invoice i, line l
where i.invoiceNum = l.invoiceID and i.invoiceNum=4125
/

select c.cusID,c.cusName,c.cusAdd,cusPhone from customer c, invoice i
where i.cusID = c.cusID and i.invoiceNum=4125
/

select l.prodID,p.prodName,p.prodDesc,l.Quantity,p.cost,l.cost from line l, products p where l.prodID=p.prodID and l.invoiceID=4125
/

select sum(cost)
from line where invoiceID = 4125
/

SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (invoice.log)  as a copy of this report

