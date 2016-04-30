REM  ======================================
REM  FILE: userView1.sql
REM  DATE: June 15, 2015
REM  PURPOSE: Generating Employee Payslip
REM  ======================================

SPOOL Reports/employeePayslip.log
SET LINESIZE 200

PROMPT ... creating User View 1: Employee Payslip for Rohan Bhadru...


COL empID HEADING "Employee ID" FORMAT 99999999
COL empFName HEADING "First Name" FORMAT A12
COL empLName HEADING "Last Name" FORMAT A12
COL designation HEADING Designation FORMAT A20
COL DOB HEADING "Date of Birth" FORMAT A12
COL deptID HEADING "Depatment No" FORMAT 9999
COL paySlipID HEADING "Pay Slip ID" FORMAT 9999
COL dateOfJoining HEADING "Date of Joining" FORMAT A12
COL deptName HEADING "Department Name" FORMAT A20
COL categoryName HEADING "Category Name" FORMAT A9
COL basePay HEADING "Salary" FORMAT $99,999,999.00
COL allowances HEADING "Allowances" FORMAT $99,999,999.00

select d.deptID, d.deptName from department d, employee e where e.empID=1267 and e.deptID=d.deptID
/ 

select p.payslipID,p.categoryName from payslip p, employee e, department d where e.deptID = d.deptID and e.paySlipID = p.paySlipID and  e.empID = 1267
/

select e.empID, e.empFName, e.empLName, e.designation, e.DOB, e.dateOfJoining, p.basePay, p.allowances 
from employee e, department d, payslip p
where e.deptID = d.deptID and e.paySlipID = p.paySlipID and  e.empID = 1267
/

SPOOL OFF
CLEAR COLUMNS

PROMPT ... You can print this file (Employee Pasylip.log)  as a copy of this report

