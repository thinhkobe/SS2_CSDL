CREATE DATABASE quanlibanhang;
USE quanlibanhang;
CREATE TABLE Customer(
cID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(25),
cAge TINYINT 
);
CREATE TABLE Order1(
oID  INT PRIMARY KEY AUTO_INCREMENT,
cID INT ,
FOREIGN KEY (cID) REFERENCES Customer(cID),
oDate DATETIME DEFAULT CURRENT_TIMESTAMP,
oTotalPrice INT 
);
CREATE TABLE Product(
pID  INT PRIMARY KEY AUTO_INCREMENT,
pName VARCHAR(25),
pPrice INT 
);
CREATE TABLE OrderDetail(
oID  INT,
FOREIGN KEY (oID) REFERENCES Order1(oID),
pID INT,
FOREIGN KEY (pID) REFERENCES Product(pID),
odQTY INT 
);
