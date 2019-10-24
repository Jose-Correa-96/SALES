create database SAlES_3
DEFAULT CHARACTER SET utf8;

/* Poner en uso la base de datos */
use SALES_3;
-- tables
-- Table: Customer
CREATE TABLE cliente (
    CustNo varchar(8) NOT NULL,
    CustFirstName varchar(125) NULL,
    CustLastName varchar(125) NULL,
    CustCity varchar(100) NULL,
    CustState varchar(100) NULL,
    CustZip decimal(50,0) NULL,
    CustBal decimal(50,0) NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (CustNo)
);

-- Table: Employee
CREATE TABLE empleado (
    EmpNo varchar(8) NOT NULL,
    EmpFirstName varchar(150) NULL,
    EmpLastName varchar(150) NULL,
    EmpPhone varchar(20) NULL,
    EmpEmail varchar(50) NULL,
    CONSTRAINT empleado_pk PRIMARY KEY (EmpNo)
);

-- Table: OrderTbl
CREATE TABLE ordenes (
    OrdNo varchar(8) NOT NULL,
    OrdDate timestamp NULL,
    CustNo varchar(8) NOT NULL,
    EmpNo varchar(8) NOT NULL,
    CONSTRAINT ordenes_pk PRIMARY KEY (OrdNo)
);

-- foreign keys
-- Reference: OrderTbl_Customer (table: OrderTbl)
ALTER TABLE ordenes ADD CONSTRAINT ordenes_cliente FOREIGN KEY ordenes_cliente (CustNo)
    REFERENCES cliente (CustNo);

-- Reference: OrderTbl_Employee (table: OrderTbl)
ALTER TABLE ordenes ADD CONSTRAINT ordenes_empleado FOREIGN KEY ordenes_empleado (EmpNo)
    REFERENCES empleado (EmpNo);

-- End of file.

