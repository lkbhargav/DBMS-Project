REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================

prompt ...inserting data to table products...

INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1673,'Raspberry Pi','Mini Computer used for development purposes',50,35.72,1);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1289,'Arduino UNO','Development Board used for building Robots',29,31.89,1);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1412,'Arduino Mega','Mini Computer used for development purposes better than UNO',62,53.75,1);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1299,'Resistors','Analog component used to build circuits(Charge Resisting)',225,1.00,2);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1298,'Capacitors','Analog component used to build circuits(Charge Holding)',300,1.50,2);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1297,'Transistors','Decision Making Analog Component',150,2.25,2);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1455,'IC 555','Timer Integrated Circuit',48,7.20,3);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1495,'IC 7408','AND gate Integrated Circuit',72,7.40,3);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1465,'IC 7406','OR gate Integrated Circuit',61,7.33,3);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1333,'Rain Sensor','Detects rainfall',82,5.12,4);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1334,'Ultrasound','Range Calculation Sensor',113,5.89,4);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1335,'PIR Sensor','Passive Infrared Sensor',77,6.55,4);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1911,'Wires','Used to make circuit connections',400,0.62,5);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1912,'LED','Used in circuits for indicating outputs',300,1.32,5);
INSERT INTO products(prodID,prodName,prodDesc,Quantity,cost,categoryID) VALUES(1921,'Solderon','Used to join wires and Components',20,10.50,5);

