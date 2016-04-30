REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================
set linesize 200
prompt  ...inserting values into table department... 

INSERT INTO department VALUES(1,'Finance Department');
INSERT INTO department VALUES(2,'Sales Department');
INSERT INTO department VALUES(3,'Admin Department');
INSERT INTO department VALUES(4,'Shipping Department');
INSERT INTO department VALUES(5,'Helpdesk Department');
INSERT INTO department VALUES(6,'Marketing Department');
INSERT INTO department VALUES(7,'Technical Department');

select * from department;

prompt  ...inserting values into table membership plan... 

INSERT INTO membershipPlan VALUES(1,'Silver','Basic plan: Free shipping above 100$ Purchase for 1 year');
INSERT INTO membershipPlan VALUES(2,'Gold','Normal plan: Free shipping above 50$ Purchase for 1 year');
INSERT INTO membershipPlan VALUES(3,'Platinum','Deluxe plan: Free shipping above 25$ Purchase for 1 year');

select * from memberShipPlan;

prompt  ...inserting values into table payslip...

INSERT INTO payslip VALUES(1,'Director',500000,80000);
INSERT INTO payslip VALUES(2,'Manager',250000,35000);
INSERT INTO payslip VALUES(3,'Employee',95000,10000);

select * from payslip;

prompt  ...inserting values into table employee... 

INSERT INTO employee VALUES(1234,'Kundan','Abba Reddy','CFO','28-MAR-2013','10-JUN-1990','S',3,1);
INSERT INTO employee VALUES(1267,'Rohan','Bhadru','Finance Manager','12-APR-2013','04-DEC-1991','M',1,2);
INSERT INTO employee VALUES(1334,'Preetham','Reddy','CTO','05-NOV-2013','17-FEB-1993','M',3,1);
INSERT INTO employee VALUES(1398,'Shivnath','Ravulpally','Market Manager','17-JUN-2010','15-OCT-1987','S',6,2);
INSERT INTO employee VALUES(1443,'Manoj','Kumar','Technical','08-DEC-2011','14-JUL-1989','S',7,3);
INSERT INTO employee VALUES(1487,'Samuels','Willingston','Marketing Staff','29-AUG-2012','11-DEC-1990','M',6,3);
INSERT INTO employee VALUES(1539,'Madhur','Bala','CEO','15-FEB-2011','19-NOV-1990','S',3,1);
INSERT INTO employee VALUES(1653,'Jagapathi','Babu','Non Technical','19-JUL-2012','07-SEP-1985','M',4,3);

select * from employee;

prompt  ...inserting values into table vendor...

INSERT INTO vendor VALUES(3291,'RS Components','#290, 1st floor, Narayan Pillai Street, Shivajinagar, Bangalore - 560001','7259176285');
INSERT INTO vendor VALUES(4837,'NSK Electronics','#402, Venkateshwara Colony, Nalagonda - 508001','9743982736');
INSERT INTO vendor VALUES(2551,'KIND Distributors','#19, Fruit Street, Indiranagar, Hyderabad - 500016','8996754321');
INSERT INTO vendor VALUES(4150,'OM Electronics','#182, Panchkarna Street, Karool bagh, Delhi - 110005','9738110333');
INSERT INTO vendor VALUES(8734,'SMD Components','#799, 3rd floor, JC road, Navi Mumbai, Mumbai - 400707','9743244642');
INSERT INTO vendor VALUES(7168,'Element14','#1907, Eden Gardens Street, Sampathnagar, Kolkata - 340892','9964929717');

select * from vendor;

prompt ... creating table Inventory category...

INSERT INTO inventoryCategory VALUES(1,'Development Boards');
INSERT INTO inventoryCategory VALUES(2,'Analog Components');
INSERT INTO inventoryCategory VALUES(3,'Digital Components');
INSERT INTO inventoryCategory VALUES(4,'Sensors');
INSERT INTO inventoryCategory VALUES(5,'Discrete Components');

select * from inventoryCategory;

prompt ... creating table Shipping company...

INSERT INTO shippingCompany VALUES(1,'Aramex');
INSERT INTO shippingCompany VALUES(2,'Fedex');
INSERT INTO shippingCompany VALUES(3,'UPS');
INSERT INTO shippingCompany VALUES(4,'USPS');
INSERT INTO shippingCompany VALUES(5,'DHL');

select * from shippingCompany;

Prompt ...inserting data into customer table...

INSERT INTO customer VALUES(1000,'Shiva','1000,bridgeport Avenue,Bridgeport,ct 06608','2030071000');
INSERT INTO customer VALUES(1001,'mithun','1001,Washington Avenue,darien,ct 06608','2030071001');
INSERT INTO customer VALUES(1002,'karthik','1002,Lexington Avenue,Hartford,ct 06608','2030071002');
INSERT INTO customer VALUES(1003,'Chandrahaas','1003,staten Avenue,NewHeaven,ct 06608','2030071003');
INSERT INTO customer VALUES(1004,'kiran','1004,keys Avenue,stratford,ct 06608','2030071004');
INSERT INTO customer VALUES(1005,'Trilok','1005,madison Avenue,westport,ct 06608','2030071005');
INSERT INTO customer VALUES(1006,'ravikiran','1006,willingston Avenue,stamford,ct 06608','2030071006');
INSERT INTO customer VALUES(1007,'ramakrishna','1007,broadway Avenue,orange,ct 06608','2030071007');
INSERT INTO customer VALUES(1008,'madhu','1008,newengland Avenue,milford,ct 06608','2030071008');
INSERT INTO customer VALUES(1009,'Chanakya','1009,indian Avenue,shelton,ct 06608','2030071009');
INSERT INTO customer VALUES(1010,'preetham','1010,newlanes Avenue,nagautack,ct 06608','2030071010');
INSERT INTO customer VALUES(1011,'sudhindra','1011,Boston Avenue,westport,ct 06608','2030071011');
INSERT INTO customer VALUES(1012,'jagadeesh','1012,clarkstreet,norwalk,ct 06608','2030071012');
INSERT INTO customer VALUES(1013,'Mythili','1013,ford Avenue,middletown,ct 06608','2030071013');
INSERT INTO customer VALUES(1014,'Jyotsna','10014,seaside Avenue,westhaven,ct 06608','2030071014');

select * from customer;

prompt  ...inserting values into table plan Expiry... 

INSERT INTO planExpiry VALUES(1,1008,'28-MAY-2016');
INSERT INTO planExpiry VALUES(1,1006,'06-JUN-2017');
INSERT INTO planExpiry VALUES(2,1014,'14-NOV-2015');
INSERT INTO planExpiry VALUES(3,1001,'17-OCT-2016');
INSERT INTO planExpiry VALUES(3,1004,'21-AUG-2015');
INSERT INTO planExpiry VALUES(2,1000,'28-MAY-2016');
INSERT INTO planExpiry VALUES(3,1009,'13-JAN-2017');
INSERT INTO planExpiry VALUES(1,1011,'25-JUL-2016');
INSERT INTO planExpiry VALUES(3,1003,'22-DEC-2018');
INSERT INTO planExpiry VALUES(1,1013,'28-SEP-2016');
INSERT INTO planExpiry VALUES(2,1005,'15-AUG-2017');
INSERT INTO planExpiry VALUES(2,1012,'29-APR-2016');

select * from planExpiry;

prompt ...insertingvalues into table invoice...

INSERT INTO invoice VALUES(2145,'23-MAY-2014','28-MAY-2014','Card','Pending','Economy',1001);
INSERT INTO invoice VALUES(3187,'05-FEB-2015','11-FEB-2015','Card','Pending','Economy',1004);
INSERT INTO invoice VALUES(4125,'19-MAY-2009','24-MAY-2009','COD','Pending','Standard',1007);
INSERT INTO invoice VALUES(2175,'02-JUN-2015','03-JUN-2015','Card','PAID','Priority',1012);
INSERT INTO invoice VALUES(7284,'13-Jan-2012','14-Jan-2012','Card','PAID','Priority',1004);
INSERT INTO invoice VALUES(2971,'22-MAY-2013','30-MAY-2013','paypal','PAID','Standard',1012);
INSERT INTO invoice VALUES(9002,'01-JUL-2011','04-JUL-2011','Card','PAID','Economy',1004);
INSERT INTO invoice VALUES(8295,'09-FEB-2010','13-FEB-2010','Card','Pending','Economy',1012);
INSERT INTO invoice VALUES(9916,'03-MAR-2010','07-MAR-2010','COD','PAID','Economy',1004);
INSERT INTO invoice VALUES(9932,'15-NOV-2012','18-NOV-2012','COD','PAID','Economy',1009);
INSERT INTO invoice VALUES(8123,'13-OCT-2013','16-OCT-2013','Card','PAID','Standard',1010);
INSERT INTO invoice VALUES(9334,'23-MAY-2008','25-MAY-2008','Card','Pending','Standard',1001);
INSERT INTO invoice VALUES(5562,'11-Aug-2014','17-Aug-2014','Paypal','PAID','Economy',1007);
INSERT INTO invoice VALUES(2001,'31-DEC-2009','01-Jan-2010','Card','PAID','Priority',1014);

select * from invoice;

prompt ...inserting data into table tracking details...

INSERT INTO trackingDetails VALUES(8123,2,'FED24EX98108');
INSERT INTO trackingDetails VALUES(2145,1,'ARA12EX67528');
INSERT INTO trackingDetails VALUES(3187,1,'ARA98EX72891');
INSERT INTO trackingDetails VALUES(4125,3,'UPS34EX77980');
INSERT INTO trackingDetails VALUES(2175,2,'FED93EX19836');
INSERT INTO trackingDetails VALUES(7284,4,'USP67EX28197');
INSERT INTO trackingDetails VALUES(2971,5,'DHL82EX45287');
INSERT INTO trackingDetails VALUES(9002,3,'UPS22EX73846');
INSERT INTO trackingDetails VALUES(8295,1,'ARA76EX37920');
INSERT INTO trackingDetails VALUES(9916,4,'UPS49EX28403');
INSERT INTO trackingDetails VALUES(9932,2,'FED09EX73912');
INSERT INTO trackingDetails VALUES(9334,3,'UPS20EX37492');
INSERT INTO trackingDetails VALUES(5562,5,'DHL12EX36428');
INSERT INTO trackingDetails VALUES(2001,4,'USP19EX11033');

select * from trackingDetails;

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

select * from products;

prompt ...inserting data to table line...

INSERT INTO line VALUES(1673,2145,10,352.20);
INSERT INTO line VALUES(1298,2145,50,75.00);
INSERT INTO line VALUES(1465,3187,15,109.95);
INSERT INTO line VALUES(1911,4125,20,12.40);
INSERT INTO line VALUES(1297,4125,10,22.50);
INSERT INTO line VALUES(1412,4125,1,53.75);
INSERT INTO line VALUES(1333,2175,5,25.60);
INSERT INTO line VALUES(1912,2175,7,9.24);
INSERT INTO line VALUES(1289,7284,2,63.78);
INSERT INTO line VALUES(1673,2971,1,35.72);
INSERT INTO line VALUES(1921,9002,6,63.00);
INSERT INTO line VALUES(1334,8295,10,58.90);
INSERT INTO line VALUES(1335,8295,10,65.50);
INSERT INTO line VALUES(1465,9916,4,29.32);
INSERT INTO line VALUES(1673,9932,1,35.72);
INSERT INTO line VALUES(1911,9932,10,6.20);
INSERT INTO line VALUES(1455,9932,5,36.00);
INSERT INTO line VALUES(1412,8123,2,107.50);
INSERT INTO line VALUES(1299,8123,50,50.00);
INSERT INTO line VALUES(1298,9334,10,15.00);
INSERT INTO line VALUES(1673,5562,3,107.16);
INSERT INTO line VALUES(1289,2001,1,31.89);

select * from line;

prompt ...inserting data to purchase order...

INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(3291,1673,50,30.00);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(3291,1289,35,29.20);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4837,1412,10,50.00);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4837,1299,500,0.80);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4837,1298,375,1.15);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4837,1297,290,2.00);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(2551,1455,100,6.80);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4150,1495,80,7.00);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(4150,1465,95,6.95);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(8734,1333,120,4.90);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(8734,1334,82,5.50);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(8734,1335,50,6.20);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(7168,1911,50,0.50);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(7168,1912,50,1.10);
INSERT INTO purchaseOrder(vendorID,prodID,Quantity,cost)  VALUES(7168,1921,50,10.15);

select * from purchaseOrder;

select table_name from user_tables;










