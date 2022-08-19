USE DO_AN
GO

// bảng sản phẩm
CREATE TABLE PRODUCT(
	productId varchar(10) primary key,
	productName nvarchar(100),
	price float,
	productImage nvarchar(max),
	[description] ntext,
	createDate timestamp,
	exprity datetime,
	madeIn int, 
	quantity int,
	categoryId int foreign key(categoryId) references CATEGORY(categoryId),
	status bit
)
GO

// bảng thông tin  sản phẩm
CREATE TABLE PRODUCTIMAGE(
	proImageId int primary key,
	productId varchar(10) foreign key(productId) references PRODUCT(productId),
	image varchar(max),
	createDate timestamp
)
GO

// bảng chứa thông tin khách hàng
CREATE TABLE CUSTOMER(
	customerId int primary key,
	fullName nvarchar(100),
	[password] varchar(100),
	phone varchar(20),
	[address] nvarchar(250),
	email varchar(150),
	avatar nvarchar(250),
	createDate timestamp,
	status bit
)
GO

//bảng chứa thông tin giỏ hàng
CREATE TABLE CART(
	cartId int primary key,
	customerId int foreign key (customerId) references CUSTOMER(customerId),
	productId int,
	quantity int
)
GO 
//khóa ngoại vẫn chưa đc thêm 
ALTER TABLE CART
ALTER COLUMN productId varchar(10)
go
ALTER TABLE CART
ADD FOREIGN KEY (productId) REFERENCES PRODUCT(productId);
GO

//bảng thông tin voucher giảm giá
CREATE TABLE PROMOTIONS(
	promotionId int primary key,
	promotionName varchar(250),
	startDate datetime,
	endDate datetime,
	quantity int,
	createDate timestamp
)
GO

// bảng chứa thông tin đơn hàng
CREATE TABLE ORDERS(
	orderId int primary key,
	customerId int foreign key(customerId) references CUSTOMER(customerId),
	fullName nvarchar(100),
	phone varchar(20),
	[address] nvarchar(250),
	email varchar(150),
	promotionId int foreign key(promotionId) references PROMOTIONS(promotionId),
	total float,
	createDate timestamp,
	status bit
)
GO

// bảng chứa thông tin đơn hàng
CREATE TABLE ORDERDETAIL(
	orderDetailId int primary key,
	orderId int foreign key(orderId) references ORDERS(orderId),
	productId varchar(10) foreign key(productId) references PRODUCT(productId),
	quantity int,
	price float,
	createDate timestamp
)
GO

// bảng chứa thông tin phản hồi của khách hàng
CREATE TABLE FEEDBACK(
	feedBackId int primary key,
	customerId int foreign key(customerId) references CUSTOMER(customerId),
	productId varchar(10) foreign key(productId) references PRODUCT(productId),
	content ntext,
	feedBackImage varchar(max),
	createDate timestamp,
	status bit
)
GO

// bảng chứa thông tin tài khoản
CREATE TABLE USERS(
	userId int primary key,
	userName varchar(150),
	password varchar(100),
	customerId int foreign key(customerId) references CUSTOMER(customerId),
	isAdmin int,
	createDate timestamp,
	status bit
)
GO

// bảng chứa thông tin phân quyền
CREATE TABLE ROLES(
	roleId int primary key,
	roleName varchar(50),
	status bit
)	
GO

// bảng chứa thông tin phân quyền tài khoản
CREATE TABLE USERROLES(
	userRoleId int primary key,
	userId int foreign key(userId) references USERS(userId),
	roleId int foreign key(roleId) references ROLES(roleId)
)
GO
