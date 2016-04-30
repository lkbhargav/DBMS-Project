REM  ======================================
REM  FILE: userView4.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Customer Order History 
REM  ======================================

SPOOL Reports/customerOrderHistory.log
SET LINESIZE 200

PROMPT ... creating User View 4: Customer Order History for Chanakya(CustomerID: 1009)...


COL cusID HEADING "Customer ID" FORMAT 99999999
COL cusName HEADING "Customer Name" FORMAT A15
COL cusAdd HEADING "Customer Address" FORMAT A20
COL cusPhone HEADING "Contact No" FORMAT 9999999999
COL invoiceNum HEADING "Invoice Number" FORMAT 9999
COL invoiceDate HEADING "Invoice Date" FORMAT A12
COL invoiceShippedDate HEADING "Shipped Date" FORMAT A12
COL payMethod HEADING "Pay Method" FORMAT A14
COL paymentStatus HEADING "Pay Status" FORMAT A14
COL shippingSpeed HEADING "Ship Speed" FORMAT A14
COL prodName HEADING "Product Name" FORMAT A14
COL quantity HEADING "Quantity" FORMAT 999
COL cost HEADING "Total Cost" FORMAT $99,999,999.99
COL sum(l.cost) HEADING "Grand Total" FORMAT $99,999,999.99

select DISTINCT c.cusID, c.cusName, c.cusAdd, c.cusPhone from customer c, invoice i where c.cusID = i.cusID and i.cusID = 1009
/

select DISTINCT i.invoiceNum,i.invoiceDate,i.invoiceShippedDate,i.payMethod,i.paymentStatus,i.shippingSpeed,p.prodName, l.quantity, l.cost FROM invoice i, customer c, products p, line l where i.invoiceNum = l.invoiceID and l.prodID=p.prodID and c.cusID=i.cusID and i.cusID = 1009 ORDER BY i.invoiceNum
/

select sum(l.cost) from line l, invoice i, products p, customer c where i.invoiceNum = l.invoiceID and l.prodID=p.prodID and c.cusID=i.cusID and i.cusID = 1009
/

SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (Employee Pasylip.log)  as a copy of this report

