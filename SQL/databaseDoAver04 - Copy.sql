CREATE DATABASE DO_AN_04
GO
USE DO_AN_04
GO
-- Luu thong tin danh muc
create table Category(
    categoryId int primary key identity(1,1),
    categoryName nvarchar(100) not null,
    createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    status bit
)
go

insert into Category(categoryName,status) values
(N'Robusta',1)
select * from Category
go
-- bảng sản phẩm
CREATE TABLE Product(
	productId varchar(10) primary key not null,
	productName nvarchar(100) not null,
	price float not null,
	productImage varchar(max),
	[description] ntext,
	createAt DATETIME  DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
	exprity datetime,
	madeIn nvarchar(100), 
	quantity int,
	categoryId int foreign key(categoryId) references Category(categoryId),
	status bit
)
GO

-- bảng thông tin  sản phẩm


-- bảng chứa thông tin khách hàng
CREATE TABLE Customer(
	customerId int primary key identity(1,1),
	fullName nvarchar(100) not null,
	[password] varchar(100) not null,
	phone varchar(20) not null,
	[address] nvarchar(250) not null,
	email varchar(150),
	avatar varchar(250),
	 createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
	status bit
)
GO

--bảng chứa thông tin giỏ hàng
CREATE TABLE Cart(
	cartId int primary key identity(1,1),
	customerId int foreign key (customerId) references Customer(customerId),
	productId varchar(10) foreign key references Product(productId),
	quantity int
)
GO 

--bảng thông tin voucher giảm giá
create table Promotions(
    promotionId int primary key identity(1,1),
    promotionName varchar(250),
    startTime datetime,
    endTime datetime,
    discount int, 
    createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    applyDay varchar(255),
    maxDiscount int,
    remainApply int,
    code varchar(255),
    status bit
)
go

-- bảng chứa thông tin đơn hàng
CREATE TABLE Orders(
	orderId int primary key identity(1,1),
	customerId int foreign key(customerId) references Customer(customerId),
	fullName nvarchar(100) not null,
	phone varchar(20) not null,
	[address] nvarchar(250) not null,
	email varchar(150),
	promotionId int foreign key(promotionId) references Promotions(promotionId),
	total float not null,
	createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
	status bit
)
GO

-- bảng chứa thông tin đơn hàng
CREATE TABLE OrderDetail(
	orderDetailId int primary key identity(1,1),
	orderId int foreign key(orderId) references Orders(orderId),
	productId varchar(10) foreign key(productId) references Product(productId),
	quantity int,
	price float,
	createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null
)
GO

-- bảng chứa thông tin phản hồi của khách hàng
CREATE TABLE FeedBack(
	feedBackId int primary key identity(1,1),
	customerId int foreign key(customerId) references Customer(customerId),
	productId varchar(10) foreign key(productId) references Product(productId),
	content ntext,
	feedBackImage varchar(max),
	createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
	status bit
)
GO

-- bảng chứa thông tin tài khoản
CREATE TABLE Users(
	userId int primary key identity(1,1),
	userName varchar(150) not null unique,
	password varchar(100) not null,
	customerId int foreign key(customerId) references Customer(customerId),
	isAdmin int,
	createAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
    updateAt DATETIME DEFAULT(CURRENT_TIMESTAMP) not null,
	status bit
)
GO
-- bảng chứa thông tin phân quyền
CREATE TABLE Roles(
	roleId int primary key identity(1,1),
	roleName varchar(50) not null unique,
	status bit
)	
GO

-- bảng chứa thông tin phân quyền tài khoản
CREATE TABLE UserRoles(
	userRoleId int primary key identity(1,1),
	userId int foreign key(userId) references Users(userId),
	roleId int foreign key(roleId) references Roles(roleId)
)
GO
