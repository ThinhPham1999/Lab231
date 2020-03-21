use P0015

create table Product(
	ProductID int identity(1,1) primary key,
	ProductName nvarchar(100) not null,
	ProductDate date not null,
	ProductImage ntext,
	ProductContent ntext,
	ProductPrice money not null
)
