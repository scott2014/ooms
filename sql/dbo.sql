/*
Navicat SQL Server Data Transfer

Source Server         : sqlserver
Source Server Version : 90000
Source Host           : 127.0.0.1:1433
Source Database       : ooms
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2014-05-26 18:31:01
*/


-- ----------------------------
-- Table structure for meal
-- ----------------------------
DROP TABLE [dbo].[meal]
GO
CREATE TABLE [dbo].[meal] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[shopId] bigint NULL ,
[price] float(53) NULL ,
[roomCosts] float(53) NULL ,
[name] varchar(100) NULL ,
[description] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of meal
-- ----------------------------
SET IDENTITY_INSERT [dbo].[meal] ON
GO
SET IDENTITY_INSERT [dbo].[meal] OFF
GO

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE [dbo].[order]
GO
CREATE TABLE [dbo].[order] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[clientId] bigint NULL ,
[mealId] bigint NULL ,
[orderTime] datetime NULL 
)


GO

-- ----------------------------
-- Records of order
-- ----------------------------
SET IDENTITY_INSERT [dbo].[order] ON
GO
SET IDENTITY_INSERT [dbo].[order] OFF
GO

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE [dbo].[shop]
GO
CREATE TABLE [dbo].[shop] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[name] varchar(100) NULL ,
[address] varchar(100) NULL 
)


GO

-- ----------------------------
-- Records of shop
-- ----------------------------
SET IDENTITY_INSERT [dbo].[shop] ON
GO
SET IDENTITY_INSERT [dbo].[shop] OFF
GO

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE [dbo].[user]
GO
CREATE TABLE [dbo].[user] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[username] varchar(100) NULL ,
[password] varchar(32) NULL ,
[email] varchar(255) NULL ,
[registerTime] datetime NULL ,
[rightCode] int NULL ,
[rightName] varchar(16) NULL 
)


GO

-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO

-- ----------------------------
-- Indexes structure for table meal
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table meal
-- ----------------------------
ALTER TABLE [dbo].[meal] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table order
-- ----------------------------
ALTER TABLE [dbo].[order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table shop
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table shop
-- ----------------------------
ALTER TABLE [dbo].[shop] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD PRIMARY KEY ([id])
GO
