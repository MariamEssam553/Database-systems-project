USE [master]
GO
/****** Object:  Database [Hypermarket]    Script Date: 1/9/2021 12:31:47 AM ******/
CREATE DATABASE [Hypermarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hypermarket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hypermarket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hypermarket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hypermarket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hypermarket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hypermarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hypermarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hypermarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hypermarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hypermarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hypermarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hypermarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hypermarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hypermarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hypermarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hypermarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hypermarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hypermarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hypermarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hypermarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hypermarket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hypermarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hypermarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hypermarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hypermarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hypermarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hypermarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hypermarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hypermarket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hypermarket] SET  MULTI_USER 
GO
ALTER DATABASE [Hypermarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hypermarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hypermarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hypermarket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hypermarket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hypermarket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Hypermarket] SET QUERY_STORE = OFF
GO
USE [Hypermarket]
GO
/****** Object:  Table [dbo].[Buys]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buys](
	[Cashier_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Buys] PRIMARY KEY CLUSTERED 
(
	[Cashier_ID] ASC,
	[Customer_ID] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cashiers]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cashiers](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[gender] [varchar](50) NULL,
	[start_date] [date] NULL,
	[age] [int] NULL,
	[street] [varchar](50) NULL,
	[Building_number] [varchar](50) NULL,
	[Apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Working_hours] [int] NULL,
 CONSTRAINT [PK_Cashiers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[P#] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Subcategory] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[P#] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [int] NULL,
	[Street] [varchar](50) NULL,
	[Building_number] [varchar](50) NULL,
	[Apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[Loyalty_points] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[For Sale Products]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[For Sale Products](
	[P#] [int] NOT NULL,
	[Selling_price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_For Sale Products] PRIMARY KEY CLUSTERED 
(
	[P#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[P#] [int] NOT NULL,
	[Cost_price] [int] NULL,
	[Quantity] [int] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[P#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory Department]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory Department](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[gender] [varchar](50) NULL,
	[start_date] [date] NULL,
	[age] [int] NULL,
	[street] [varchar](50) NULL,
	[building_number] [varchar](50) NULL,
	[Apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Working_hours] [int] NULL,
 CONSTRAINT [PK_Inventory Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[It department]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[It department](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[gender] [varchar](50) NULL,
	[start_date] [date] NULL,
	[age] [int] NULL,
	[street] [varchar](50) NULL,
	[building_number] [varchar](50) NULL,
	[Apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Working_hours] [int] NULL,
 CONSTRAINT [PK_It department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procurement department]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procurement department](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[gender] [varchar](50) NULL,
	[start_date] [date] NULL,
	[age] [int] NULL,
	[street] [varchar](50) NULL,
	[building_number] [varchar](50) NULL,
	[apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Working_hours] [int] NULL,
 CONSTRAINT [PK_Procurement department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products Bought]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products Bought](
	[P#] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Cashier_ID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Products Bought] PRIMARY KEY CLUSTERED 
(
	[P#] ASC,
	[Customer_ID] ASC,
	[Cashier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profit per Product]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profit per Product](
	[P#] [int] NOT NULL,
	[Profit] [int] NULL,
 CONSTRAINT [PK_Profit per Product] PRIMARY KEY CLUSTERED 
(
	[P#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Replenish]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Replenish](
	[P#] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Replenish] PRIMARY KEY CLUSTERED 
(
	[P#] ASC,
	[Employee_ID] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales Department]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Department](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[gender] [varchar](50) NULL,
	[start_date] [date] NULL,
	[age] [int] NULL,
	[street] [varchar](50) NULL,
	[building_number] [varchar](50) NULL,
	[Apartment_number] [int] NULL,
	[city] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Working_hours] [int] NULL,
 CONSTRAINT [PK_Sales Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone_number] [int] NULL,
	[Street] [varchar](50) NULL,
	[Building_number] [varchar](50) NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplies]    Script Date: 1/9/2021 12:31:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies](
	[P#] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Supplies] PRIMARY KEY CLUSTERED 
(
	[P#] ASC,
	[Employee_ID] ASC,
	[Supplier_ID] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE PROCEDURE ApplyBuys @CashID int, @CustID int, @Date date
AS
BEGIN
Insert Into Buys Values(@CashID, @CustID, @Date);
END
Go

CREATE PROCEDURE UpdateLoyaltyPts @CID int, @LP int
AS
BEGIN
Update Customer Set Loyalty_points = @LP WHERE ID = @CID;
END
Go
CREATE PROCEDURE GetEmpIds
AS
BEGIN
SELECT ID FROM "it department"
END
GO


CREATE PROCEDURE DeleteEmp @emp_id int
AS
BEGIN
DELETE FROM "it department" WHERE ID= @emp_id 
END
GO


CREATE PROCEDURE GetEmpTypes
AS
BEGIN
select title AS Type,count(*) AS Number from "it department" GROUP BY title
END
GO

ALTER TABLE [dbo].[Buys]  WITH CHECK ADD  CONSTRAINT [FK_Buys_Cashiers] FOREIGN KEY([Cashier_ID])
REFERENCES [dbo].[Cashiers] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Buys] CHECK CONSTRAINT [FK_Buys_Cashiers]
GO
ALTER TABLE [dbo].[Buys]  WITH CHECK ADD  CONSTRAINT [FK_Buys_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Buys] CHECK CONSTRAINT [FK_Buys_Customer]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Inventory]
GO
ALTER TABLE [dbo].[For Sale Products]  WITH CHECK ADD  CONSTRAINT [FK_For Sale Products_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[For Sale Products] CHECK CONSTRAINT [FK_For Sale Products_Inventory]
GO
ALTER TABLE [dbo].[Products Bought]  WITH CHECK ADD  CONSTRAINT [FK_Products Bought_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products Bought] CHECK CONSTRAINT [FK_Products Bought_Inventory]
GO
ALTER TABLE [dbo].[Profit per Product]  WITH CHECK ADD  CONSTRAINT [FK_Profit per Product_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Profit per Product] CHECK CONSTRAINT [FK_Profit per Product_Inventory]
GO
ALTER TABLE [dbo].[Replenish]  WITH CHECK ADD  CONSTRAINT [FK_Replenish_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Replenish] CHECK CONSTRAINT [FK_Replenish_Inventory]
GO
ALTER TABLE [dbo].[Replenish]  WITH CHECK ADD  CONSTRAINT [FK_Replenish_Inventory Department] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Inventory Department] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Replenish] CHECK CONSTRAINT [FK_Replenish_Inventory Department]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Inventory] FOREIGN KEY([P#])
REFERENCES [dbo].[Inventory] ([P#])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Inventory]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Procurement department] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Procurement department] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Procurement department]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Suppliers] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Suppliers] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [Hypermarket] SET  READ_WRITE 
GO
