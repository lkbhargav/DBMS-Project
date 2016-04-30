REM  ======================================
REM  FILE: createTablespace.sql
REM  DATE: June 15, 2015
REM  PURPOSE: To create user to access database
REM  ======================================


prompt... in create_tables.sql...

prompt ... creating table payslip...

CREATE TABLE payslip
(
     payslipID     SMALLINT,
     categoryName  VARCHAR2(15),
     basePay       DECIMAL,
     allowances    DECIMAL,
     CONSTRAINT payslip_pk_payslipID PRIMARY KEY(payslipID)
);

prompt ... creating table department...

CREATE TABLE department
(
     deptID        SMALLINT,
     deptName      VARCHAR2(20),
     CONSTRAINT department_pk_deptID PRIMARY KEY(deptID)
);


prompt ... creating table employee...

CREATE TABLE employee
(
     empID          SMALLINT,
     empFName       VARCHAR2(20),
     empLName       VARCHAR2(20),
     designation    VARCHAR2(15),
     dateOfJoining  date,
     DOB            date,
     empStatus      char(1),
     deptID         SMALLINT,
     payslipID      SMALLINT,
     CONSTRAINT employee_pk_empID PRIMARY KEY(empID),
     CONSTRAINT employee_fk1 FOREIGN KEY(deptID) REFERENCES department(deptID),
     CONSTRAINT employee_fk2 FOREIGN KEY(payslipID) REFERENCES payslip(payslipID)
);


prompt ... creating table membership plan...

CREATE TABLE membershipPlan
(
     planNum       SMALLINT,
     planName      VARCHAR2(20),
     planDesc      VARCHAR2(75),
     CONSTRAINT membershipPlan_pk_planNum PRIMARY KEY(planNum)
);


prompt ... creating table vendor...

CREATE TABLE vendor
(
     vendorID      SMALLINT,
     vendorName    VARCHAR2(20),
     vendorAdd     VARCHAR2(130),
     vendorPhone   char(10),
     CONSTRAINT vendor_pk_vendorID PRIMARY KEY(vendorID)
);


prompt ... creating table Inventory category...

CREATE TABLE inventoryCategory
(
     categoryID    SMALLINT,
     categoryName  VARCHAR2(20),
     CONSTRAINT invetoryCategory_pk_categoryID PRIMARY KEY(categoryID)
);


prompt ... creating table shipping company...

CREATE TABLE shippingCompany
(
     ShipCompID      SMALLINT,
     shipCompName    VARCHAR2(20),
     CONSTRAINT shippingCompany_pk_shipCompID PRIMARY KEY(shipCompID)
);


prompt ... creating table customer...

CREATE TABLE customer
(
     cusID      SMALLINT,
     cusName    VARCHAR2(20),
     cusAdd     VARCHAR2(130),
     cusPhone   char(10),
     CONSTRAINT customer_pk_cusID PRIMARY KEY(cusID)
);


prompt ... creating table plan expiry...

CREATE TABLE planExpiry
(
     planNum         SMALLINT,
     cusID           SMALLINT,
     expirationDate  DATE,
     CONSTRAINT planExpiry_pk_planNum_cusID PRIMARY KEY(planNum,cusID),
     CONSTRAINT planExpiry_fk1 FOREIGN KEY(planNum) REFERENCES membershipPlan(planNum),
     CONSTRAINT planExpiry_fk2 FOREIGN KEY(cusID) REFERENCES customer(cusID)
);


prompt ... creating table invoice...

CREATE TABLE invoice
(
     invoiceNum           SMALLINT,
     invoiceDate          DATE,
     invoiceShippedDate   DATE,
     payMethod            VARCHAR2(12),
     paymentStatus        VARCHAR2(12),
     shippingSpeed        VARCHAR2(12),
     cusID                SMALLINT,
     CONSTRAINT invoice_pk_invoiceNum PRIMARY KEY(invoiceNum),
     CONSTRAINT invoice_fk FOREIGN KEY(cusID) REFERENCES customer(cusID)
);

prompt ... creating table tracking details...

CREATE TABLE trackingDetails
(
     invoiceID      SMALLINT UNIQUE,
     shipCompID     SMALLINT,
     trackingNum    char(12) UNIQUE,
     CONSTRAINT trackDetail_pk_invo_ship PRIMARY KEY(invoiceID,shipCompID),
     CONSTRAINT trackDetail_fk1 FOREIGN KEY(invoiceID) REFERENCES invoice(invoiceNum),
     CONSTRAINT trackDetail_fk2 FOREIGN KEY(shipCompID) REFERENCES shippingCompany(shipCompID)
);


prompt ... creating table products...

CREATE TABLE products
(
     prodID            SMALLINT,
     prodName          VARCHAR2(15),
     prodDesc          VARCHAR2(75),
     Quantity          SMALLINT,
     cost              Number(5,2),
     expectedIncome    AS  (Quantity*cost), 
     categoryID        SMALLINT,
     CONSTRAINT products_pk_prodID PRIMARY KEY(prodID),
     CONSTRAINT products_fk1 FOREIGN KEY(categoryID) REFERENCES inventoryCategory(categoryID)
);


prompt ... creating table line...

CREATE TABLE line
(
     prodID            SMALLINT,
     invoiceID         SMALLINT,
     Quantity          SMALLINT,
     cost              NUMBER(5,2),
     CONSTRAINT line_pk_pID_iID PRIMARY KEY(prodID,invoiceID),
     CONSTRAINT line_fk1 FOREIGN KEY(prodID) REFERENCES products(prodID),
     CONSTRAINT line_fk2 FOREIGN KEY(invoiceID) REFERENCES invoice(invoiceNum)
);


prompt ... creating table purchase order...

CREATE TABLE purchaseOrder
(
     vendorID            SMALLINT,
     prodID              SMALLINT,
     Quantity            SMALLINT,
     cost                Number(5,2),
     totalCost     AS    (cost*Quantity),
     CONSTRAINT purord_pk_vID_pID PRIMARY KEY(prodID,vendorID),
     CONSTRAINT purord_fk1 FOREIGN KEY(prodID) REFERENCES products(prodID),
     CONSTRAINT purord_fk2 FOREIGN KEY(vendorID) REFERENCES vendor(vendorID)
);



