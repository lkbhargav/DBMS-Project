REM  ======================================
REM  FILE: userView3.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Membership Plan Report
REM  ======================================

SPOOL Reports/memberShipPlanReport.log
SET LINESIZE 200

PROMPT ... creating User View 3: Customer MemberShip Plan Report for Plan ID 3...


COL planNum HEADING "Plan ID" FORMAT 9999
COL planName HEADING "Plan Name" FORMAT A15
COL planDesc HEADING "Plan Description" FORMAT A20
COL cusID HEADING "Customer ID" FORMAT 99999
COL cusName HEADING "Customer Name" FORMAT A20
COL cusAdd HEADING "Customer Address" FORMAT A20
COL expirationDate HEADING "Plan Expiry Date" FORMAT A12

select DISTINCT planNum,planName,planDesc from membershipPlan where planNum=3
/

select c.cusID, c.cusName, c.cusAdd, p.expirationDate from planExpiry p, customer c, membershipPlan m where m.planNum = p.planNum and p.cusID = c.cusID and m.planNum=3 order by c.cusID 
/

SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (memberShipPlanReport.log)  as a copy of this report

