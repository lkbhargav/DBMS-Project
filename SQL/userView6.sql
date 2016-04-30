REM  ======================================
REM  FILE: userView6.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Shipping Label
REM  ======================================

SPOOL Reports/shippingLabel.log
SET LINESIZE 200

PROMPT ... creating User View 6: Shipping Label for Chanakya(Customer ID: 1009)...


COL invoiceNum HEADING "Invoice ID" FORMAT 9999
COL invoiceID HEADING "Invoice ID" FORMAT A15
COL cusID HEADING "Customer ID" FORMAT 9999
COL cusName HEADING "Customer Name" FORMAT A14
COL cusAdd HEADING "Customer Address" FORMAT A16
COL cusPhone HEADING "Cus Phone" FORMAT 999999999999999999
COL shipCompName HEADING "Ship Company Name" FORMAT A20
COL shippingSpeed HEADING "Ship Speed" FORMAT A12
COL shipCompID HEADING "Ship ID" FORMAT 99
COL trackingNum HEADING "Tracking Number" FORMAT 99999999999999
COL trackingDetails HEADING "Tracking Details" FORMAT A25

select s.shipCompID, s.shipCompName, i.shippingSpeed, t.trackingNum from trackingDetails t, invoice i, customer c,shippingCompany s where i.invoiceNum=t.invoiceID and c.cusID=i.cusID and t.shipCompID=s.shipCompID and c.cusID=1009
/

select i.InvoiceNum,c.cusID,c.cusName,c.cusAdd,c.cusPhone from trackingDetails t, invoice i, customer c, shippingCompany s where i.invoiceNum=t.invoiceID and c.cusID=i.cusID and t.shipCompID=s.shipCompID and c.cusID=1009
/

SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (shippingLabel.log) as a copy of this report

