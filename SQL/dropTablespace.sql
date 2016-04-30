REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================

prompt .... dropping tablespace ANDTECHSTORE...

drop tablespace ANDTECHSTORE including contents and datafiles;

prompt... tablespace dropped!...