CREATE DATABASE Perfumes
GO
USE Perfumes
GO
/* Usuario Administrador */
CREATE TABLE ShopUserAdmin(
IdUser INT IDENTITY(1,1) PRIMARY KEY,
Username VARCHAR(10),
Password VARCHAR(15),
Name VARCHAR(25),
Lastname VARCHAR(25),
Email VARCHAR(30),
Phone BIGINT)
GO
/* Detalle de productos */
CREATE TABLE Products(
IdProduct INT IDENTITY(1,1) PRIMARY KEY,
IdCategory INT,
IdSubCategory INT,
ProductName VARCHAR(40),
Description VARCHAR(100),
Price DECIMAL,
InStock BIT)
GO
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
CREATE TABLE ProductsPic(
IdPicture INT IDENTITY(1,1) PRIMARY KEY,
IdProduct INT,
Picture1 VARCHAR(300),
Picture2 VARCHAR(300),
Picture4 VARCHAR(300),
Picture5 VARCHAR(300))
GO
/** Cliente, Pedidos*/
CREATE TABLE Orders(
OrderId INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(30),
Lastname VARCHAR(40),
Address VARCHAR(50),
Ciudad VARCHAR(30),
State VARCHAR(30),
PhoneNumber BIGINT)
GO
CREATE TABLE OrderDetails(
OrderDetailId INT IDENTITY(1,1) PRIMARY KEY,
OrderId INT,
ProductId INT,
Amount DECIMAL,
Price DECIMAL)
GO
CREATE TABLE ShoppingCar(
ShoppingCartId INT IDENTITY(1,1) PRIMARY KEY,
ShoppingCartItems VARCHAR(MAX))
GO
CREATE TABLE ShoppingCarItem(
ShoppingCartItemId INT IDENTITY(1,1) PRIMARY KEY,
ShoppingCartId INT,
ProductId INT,
Amount DECIMAL)