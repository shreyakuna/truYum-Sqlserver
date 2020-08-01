CREATE TABLE menu_item(
Id int primary key identity(1,1),
Name varchar(50),
Price decimal(10,2),
Active varchar(3),
Date_of_launch date,
Catagory varchar(50),
Free_delivery varchar(3)
)
GO
CREATE TABLE user_table(
Id int primary key identity(1,1),
Name varchar(30),
Phone_no varchar(10)
)
GO
CREATE TABLE cart_table(
Id int primary key identity(1,1),
[User_id] int foreign key references user_table(Id),
menu_item_id int foreign key references menu_item(Id),
Name varchar(50),
Price decimal,
Free_delivery varchar(3)
)

GO
