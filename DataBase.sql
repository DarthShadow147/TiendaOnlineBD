USE master
GO
CREATE DATABASE Shop
GO
USE Shop
GO
/** Administrador de tienda online */
CREATE TABLE ShopUserAdmin(
IdUser INT IDENTITY(1,1) PRIMARY KEY,
Username VARCHAR(10),
Password VARCHAR(15),
Name VARCHAR(25),
Lastname VARCHAR(25),
Email VARCHAR(30),
Phone BIGINT)
GO
/** Parametricas productos */
CREATE TABLE TSizes(
IdSize INT IDENTITY(1,1) PRIMARY KEY,
SizeDescription VARCHAR(10))
GO
CREATE TABLE TProductsSize(
IdProduct INT,
IdSize INT)
GO
/** Detalle de productos*/
CREATE TABLE Category(
IdCategory INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(40),
Description VARCHAR(100),
Status BIT)
GO
CREATE TABLE SubCategory(
IdSubCategory INT IDENTITY(1,1) PRIMARY KEY,
IdCategory INT,
Name VARCHAR(40),
Status BIT)
GO
CREATE TABLE Products(
IdProduct INT IDENTITY(1,1) PRIMARY KEY,
IdCategory INT,
IdSubCategory INT,
ProductName VARCHAR(40),
Description VARCHAR(100),
PublishDate DATETIME,
Price DECIMAL,
PriceDiscount DECIMAL DEFAULT 0, 
DiscountStatus BIT,
InStock BIT)
GO
CREATE TABLE ProductsPic(
IdPicture INT IDENTITY(1,1) PRIMARY KEY,
IdProduct INT,
Picture1 VARCHAR(300),
Picture2 VARCHAR(300),
Picture4 VARCHAR(300),
Picture5 VARCHAR(300))
GO
/** Cliente, Pedidos*/
CREATE TABLE Customer(
IdCustomer INT IDENTITY(1,1) PRIMARY KEY,
UserName VARCHAR(20),
Password VARCHAR(20),
Name VARCHAR(50),
Lastname VARCHAR(50),
Email VARCHAR(30),
RegistrationDate DATETIME,
City VARCHAR(30),
Address VARCHAR(40),
AcceptsCookies BIT,
NotifiedEmail BIT,
Status BIT)
GO
CREATE TABLE Orders(
IdOrder INT IDENTITY(1,1) PRIMARY KEY,
IdCustomer INT,
Registered BIT,
PaymentType INT,
OrderDate DATETIME,
Status BIT,
Session VARCHAR(100),
Total DECIMAL)
GO
CREATE TABLE OrderItems(
Id INT IDENTITY(1,1),
IdOrder INT,
IdProduct INT,
Quantity INT)