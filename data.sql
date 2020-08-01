select * from menu_item

select * from user_table

select * from cart_table
Go

--Frame insert scripts to add data into menu_item table. Refer View Menu
--Item List Admin screen shot from Web UI Specification for sample data.
INSERT INTO menu_item VALUES
('Sandwich',99.00,'Yes','2020/03/15','Main Course','Yes'),
('Burger',129.00,'Yes','2017/12/23','Main Course','No'),
('Pizza',149.00,'Yes','2017/08/21','Main Course','No'),
('French Fries',57.00,'No','2017/07/02','Starters','Yes'),
('Chocolate Brownie',32.00,'Yes','2022/11/02','Dessert','Yes')
GO

--Frame SQL query to get all menu items
SELECT * FROM menu_item
GO

--Frame SQL query to get all menu items which after launch date and is active.
SELECT * FROM menu_item 
WHERE Date_of_launch < GETDATE() and Active='Yes'
GO
--Frame SQL query to get a menu items based on Menu Item Id

select * from menu_item where Id=3
GO

--Frame update SQL menu_items table to update all the columns values based on Menu Item Id

update menu_item
set price=170 
where Id= 3
Go
update menu_item 
set Free_delivery = 'No'
where Id=4
Go
--Frame insert scripts for adding data into user and cart tables.In user table
--create two users. Once user will not have any entries in cart, while the
--other will have at least 3 items in the cart.

INSERT INTO user_table VALUES ('John','9867453789'),('Kevin','7634678734')

INSERT INTO cart_table VALUES (2,3,'Pizza',149.00,'No'),(2,4,'French Fries',57.00,'Yes'),
(2,5,'Chocolate Brownie',32.00,'Yes')

GO

--Frame SQL query to get all menu items in a particular user’s cart

SELECT ct.* FROM cart_table ct
join user_table ut on ct.User_id=ut.Id
WHERE ut.Id=2
GO
--Frame SQL query to get the total price of all menu items in a particular user’s cart

SELECT sum(ct.Price) AS Total FROM cart_table ct
join user_table ut on ct.User_id=ut.Id
WHERE ut.Id=2
GO
--Frame SQL query to remove a menu items from Cart based on User Id and Menu Item Id

DELETE FROM cart_table
WHERE User_id=2 and menu_item_id = 4
GO
