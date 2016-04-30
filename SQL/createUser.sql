REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================

DROP USER ANDTechDBA cascade;

CREATE USER ANDTechDBA
IDENTIFIED BY ANDTechDBA
DEFAULT TABLESPACE ANDTECHSTORE;

GRANT DBA TO ANDTechDBA;

PROMPT .......user ANDTechStore_dba is created and was granted privillages....... log in as this user now.......