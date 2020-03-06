create table Menu(
	MenuID int identity(1,1) primary key,
	MenuName nvarchar(100) not null,
	MenuDetail ntext,
	Price money not null
)

create table Product(
	ProductID int identity(1,1) primary key,
	ProductName nvarchar(50) not null,
	ProductPicture text,
	ProductContent ntext
)

create table Product_In_Menu(
	ProductID int not null,
	MenuID int not null,
	CONSTRAINT PK_Product_In_Menu PRIMARY KEY (ProductID,MenuID),
	foreign key (ProductID) references Product(ProductID),
	foreign key (MenuID) references Menu(MenuID)
)



