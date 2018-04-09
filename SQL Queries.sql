insert into Address(Address_id, Street, City, State, Zip) values 
( 'A1', '75 St alphonsus street', 'Boston', 'Massachusettes', '02120'),
( 'A2', '46 Deamon street', 'Boston', 'Massachusettes', '02125' ),
( 'A3', '17 Trimble lane', 'Waldham' , 'Massachusettes', '54231' ),
( 'A4', '86 Domocili lane', 'Freemont', 'Massachusettes', '54789' ),
( 'A5', '9 Paceway pkwy', 'Ryndham', 'Massachusettes', '78935' ),
( 'A6', '22 Gilroy pkwy', 'Boston', 'Massachusettes', '95080' ),
( 'A7', '9 Paceway pkwy', 'Wenton', 'Massachusettes', '95005' ),
( 'A8', '2 Fill lane', 'Fithcburg', 'Massachusettes', '95235' ),
( 'A9', '4 Rayban street', 'Somorville', 'Massachusettes', '95035' ),
( 'A10', '54 Hudson lane', 'Boston', 'Massachusettes', '95335' ),
( 'A11', '31 Alum rock', 'Boston', 'Massachusettes', '95035'),
( 'A12', '92 King', 'Wrandham', 'Massachusettes', '95050' ),
( 'A13', '11 Ciloy lane', 'Mein', 'Massachusettes', '95005' ),
( 'A14', '41 Stevan crook street', 'Newton', 'Massachusettes', '95235' ),
( 'A15', '12 Pantro lane', 'Boston', 'Massachusettes', '95001' ),
( 'A16', '7 Troll pkwy', 'Waldham', 'Massachusettes', '95230' ),
( 'A17', '638 Bandra street', 'Boston', 'Massachusettes', '95135' ),
( 'A18', '332 Landry avanue', 'Somorville', 'Massachusettes', '95205' ),
( 'A19', '72 Abion', 'Boston', 'Massachusettes', '95050' ),
( 'A20', '85 Seynour pkwy', 'Boston', 'Massachusettes', '95234' ),
( 'A21', '92 Hoadly lane', 'Newton', 'Massachusettes', '95300' ),
( 'A22', '44 Haven street', 'Rhode Island', 'Massachusettes', '95015' ),
( 'A23', '77 Balfe lane', 'Boston', 'Massachusettes', '95025' ),
( 'A24', '83 Milson road', 'Wrandham', 'Massachusettes', '95230' ),
( 'A25', '94 Woolwich church street', 'Boston', 'Massachusettes', '95110' ),
( 'A26', '431 El camino real', 'Fitchburg', 'Massachusettes', '95050'),
( 'A27', '750 Miller street', 'Boston', 'Massachusettes', '95014' ),
( 'A28', '236 Bellomy street', 'Somorville', 'Massachusettes', '95110' ),
( 'A29', '129 Newhall street', 'Boston', 'Massachusettes', '95004' ),
( 'A30', '25 North market church street', 'Newton', 'Massachusettes', '95110' ),
( 'A31', '2949 Alum rock avenue', 'Boston', 'Massachusettes', '95127'),
( 'A32', '98 Martha street', 'Waldham', 'Massachusettes', '95128'),
( 'A33', '710 Leigh avenue', 'Rhode Island', 'Massachusettes', '95200'),
( 'A34', '25 North market church street', 'Waldham', 'Massachusettes', '95110'),
( 'A35', '1386 Cherry avenue', 'Wrandham', 'Massachusettes', '95125'),
( 'A36', '25 North market church street', 'Boston', 'Massachusettes', '95110'),
( 'A37', '800 Emory street', 'Newton', 'Massachusettes', '95126'),
( 'A38', '28 North market street', 'Boston', 'Massachusettes', '95110'),
( 'A39', '150 Cambridge Street', 'Cambridge' , 'Massachusettes', '95112');

insert into Person(Person_id, First_Name, Last_Name, Phone_Number, Date_of_Birth, Address_id) values 
('C001', 'Ketul', 'Shukla', 6177944256, '1994-10-25', 'A1'),
('C002','Margi','Mehta', 4087074884, '1994-01-03','A2'),
('C003','Parshwa','Shah', 6692566167, '1995-04-25','A3'),
('C004','Akshar','Takle', 9712915959, '1993-03-21','A4'),
('C005' ,'Karan','Diware',9825555154, '1990-04-04','A5'),
('C006','Kavish','Shah',6096789543, '1990-04-24','A7'),
('C007','Dhruv','Masturlal',669234897, '1990-03-03','A8'),
('C008','Vinit','Shah',4158521818, '1995-08-29','A9'),
('C009','Aayush','Mehta',9825555154, '1990-04-04','A10'),
('C010','Kush','Shah',7328818558, '1986-02-06','A11'),
('DM001','Saloni','Palkhiwala',7899870023, '1995-12-26','A12'),
 ('DM002','Pavni','Patel', 9638361816, '1995-10-05','A13'),
 ('DM003','Sulay','Lavsi',9979877721, '1994-03-26','A14'),
 ('DP001','Anmol','Patwa',9712446782, '1995-10-19','A15'),
 ('DP002','Karan','Nawab',9687609077, '1995-07-07','A16'),
 ('DP003','Dhruv','Masturlal' ,890890789, '1994-08-18','A17'),
( 'CSP001','Ritu','Sani',897675895, '1995-05-22','A18'),
('CSP002' ,'Alisha','Shah',9825904774, '1995-02-02','A19'),
('RM001','Dhara','Vora',987987002, '1995-03-03','A20'),
('RM002','Aakash','Mehta',6751234567, '1993-03-23','A21'),
('SA001','Shailesh','Agrawal',9825015959, '1987-05-05','A22'),
('DM004','Sonal','Shah',6098674563, '1990-04-04','A23') ,
('DM005','Rutvij','Shah',6693504912, '1990-04-24','A24'),
('DM006','Rujuta','Shah',663454912, '1990-06-26','A25'),
('DM007','Harsh','Shah',6764504912, '1990-06-4','A26'),
('SA002','Meghal','Gosalia',4156789870, '1986-10-10','A27');

insert into Customer (Customer_id) values
('C001'),
('C002'),
('C003'),
('C004'),
('C005'),
('C006'),
('C007'),
('C008'),
('C009'),
('C010');

INSERT INTO DELIVERY_MANAGER(Delivery_Manager_id , Area) Values
('DM001', 'Boston'),
('DM002', 'Waldham'),
('DM003','Wardham'),
('DM004', 'Newton'),
('DM005', 'Boston'),
('DM006','Ryndhum'),
('DM007','Waldham');

Insert into Delivery_Person(Delivery_person_id, Delivery_Manager_id) values
('DP001', 'DM003'),
('DP002','DM002'),
('DP003','DM004');

INSERT INTO System_Admin ( System_Admin_Id) VALUES
('SA001'),
('SA002');

INSERT INTO  Customer_Service_Person( Customer_Service_id) VALUES
('CSP001'),
('CSP002');

INSERT INTO Restaurant(Restaurant_id,System_Admin_id, Name, Area,Rating,Address_id) VALUES
('R001','SA002','Sukanta','Tremont','4.8','A28'),
('R002','SA002','Koongs','Somorville','2.0','A29'),
('R003','SA001','China Gate','Waldham','3.9','A30'),
('R004','SA001','Subway','Raythem','3.5','A31'),
('R005','SA002','Papaya Thai','Wrantham','4.2','A32'),
('R006','SA001','Taco Bell','Newton','4.0','A33'),
('R007','SA002','Ikes','Waldham','4.2','A34'),
('R008','SA002','Burger King','Roxbury','3.8','A35'),
('R009','SA002','BMC','Charles','2.4','A36'),
('R010','SA001','Mc Donalds','Huntington','1.9','A37'),
('R011','SA002','Deli','Boston','4.7','A38'),
('R012','SA002','Parilla','Tremont','4.2','A39');

INSERT INTO Restaurant_Cuisine(Restaurant_id,Cuisine) VALUES
( 'R001','THAI'),
( 'R002','INDIAN'),
( 'R003','THAI'),
( 'R004','ITALIAN'),
( 'R005','MOROCCON'),
( 'R006','MEXICAN'),
( 'R007','INDIAN'),
( 'R008','MALAYSIAN'),
( 'R009','LEBANESE'),
( 'R010','ITALIAN'),
( 'R011','KOREAN'),
( 'R012','CHINESE'),
( 'R002','EGYPTIAN'),
( 'R004','THAI');

INSERT INTO Restaurant_Manager (Rest_Manager_Id, Restaurant_id) Values
('RM001', 'R001'),
('RM002', 'R005'),
('RM003', 'R004'),
('RM004', 'R001'),
('RM005', 'R012'),
('RM006', 'R007'),
('RM007', 'R008');

INSERT INTO Reviews (Review_id, Restaurant_id, Customer_id, Description, Stars) VALUES 
('001','R001', 'C001', 'FOOD WAS AWESOME. WE REALLY ENJOYED THE AMBIANCE. THE STAFF WAS GREAT','4.5'), 
('002','R002', 'C001', 'FOOD WAS OKAYISH. WE LIKED THE AMBIANCE.','4.0'),
('003','R003', 'C005', 'WE LIKED THE SOUPS. WE REALLY ENJOYED THE VEGETARIAN OPTIONS. THE STAFF WAS GREAT','4.1'),
('004','R004', 'C010', 'FOOD WAS LESS IN QUANTITY. WE WERENT ATTENDED FOR A LONG TIME. THE STAFF WAS PATHETIC','2.0'), 
('005','R005', 'C003', 'I ENJOYED THEIR SERVING STYLE. I WAS ALSO IMPRESSED WITH THEIR MENU ITEMS. THE STAFF WAS VERY PLEASING','4.5'),
('006','R007', 'C009', 'I LIKED THE FOOD BUT THE PLACE WAS DIRTY','3.8'), 
('007','R006', 'C005', 'I LIKED THE FOOD AND ALSO THE PLACE BUT IT WAS IN THE CORE AREA. THIS MADE ME WASTE A LOT OF TIME ON SEARCHING THE PLACE.','3.9');

INSERT INTO ORDERS(Order_Id,Customer_id,Restaurant_id, Order_Date, Order_Time, Order_Status) Values
('001','C001','R002','2016-11-04','03:14:07','Delivered' ),
('002','C002','R001','2016-11-07','03:19:07','Delivered'),
('003','C004','R002','2016-11-07','03:44:07','Delivered' ),
('005','C005','R004','2016-11-01','03:34:07','Delivered' ),
('006','C006','R002','2016-11-04','03:04:07','Delivered' ),
('007','C007','R008','2016-11-01','02:01:07','Delivered' ),
('008','C003','R003','2016-11-21','02:14:07','Pending' ),
('009','C010','R008','2016-11-21','11:14:07','Pending' ),
('010','C009','R012','2016-11-13','02:14:00','Delivered' ),
('011','C008','R011','2016-11-05','02:14:12','Delivered' );

Insert Into Deliveries(Order_Id, Delivery_Person_Id, Delivery_Time) Values 
('001','DP001','04:14:07'),
('002','DP001','03:59:07'),
('003','DP002','04:15:00'),
('005','DP001','07:11:07'),
('006','DP002','05:14:00'),
('007','DP001','04:14:07'),
('010','DP003','04:12:07'),
('011','DP002','06:14:07');


Insert Into Menu(Restaurant_id , Menu_id , Menu_Name) Values
('R001', '001', 'Lunch'),
('R002', '001', 'Mocktails'),
('R002', '002', 'Lunch'),
('R003', '001', 'Dinner'),
('R004', '001', 'Lunch'),
('R004', '002', 'Drinks'),
('R005', '001', 'Lunch'),
('R006', '001', 'Breakfast'),
('R007', '001', 'Sides'),
('R007', '002', 'Lunch'),
('R010', '001', 'Dinner'),
('R011', '001', 'Dinner'),
('R012', '001', 'Lunch');

Insert Into Menu_Items(Restaurant_id, Menu_id , Item_Id, Item_Price, Item_Name, Item_Description) Values
('R001','001','01','10','Red Curry','Red Curry With Tofu And Vegetables'),
('R001','001','02','15','Green Curry','Green Curry With Chicken And Vegetables '),
('R002','001','01','25','Bloody Mary', null),
('R002','002','02','9','Noodles','Sichuan Style Hakka Noodles'),
('R002','001','03','11','LIT','Perfect Blend Of Happiness'),
('R003','001','01','25','Pineapple Fried Rice','Rice With Tofu And Vegetables'),
('R004','001','01','10','Margarita Pizza','Cheese Pizza'),
('R004','002','02','15','Sex On The Beach','Litchee Based Vodka Drink'),
('R005','001','01','25','Red Curry','Red Curry With Tofu And Vegetables'),
('R005','001','02','10','Cheese Noodles','Noodles With Rice And Vegetables'),
('R005','001','03','10','Hunan Paneer','Spicy Paneer'),
('R006','001','01','5','Bean Burito','Burito With Beans And Sour Cream'),
('R006','001','02','15','Mexican Fiesta','Taco, Buritos And Nachos On A Plate'),
('R007','001','01','10','Paneer Tikka Masala','Spicy Paneer In Red Velevty Buttery Gravy'),
('R007','002','02','15','Vegetable Dum Biryani','Aromatic Basmati Rice Slow Cooked With Vegetables '),
('R007','002','03','25','Punjabi Platter','Choice Of 2 Curry , 2 Roti, Dal Tadka, Jeera Rice And Pickle'),
('R007','001','04','15','Masala Cheese Naan','Cheese Stuffed Naan With Minced Garlic And Spring Onions'),
('R010','001','01','10','Pasta','Pesto Pasta'),
('R010','001','02','17','Risotto Balls','Risotto Balls Served With Marinara Sauce'),
('R011','001','01','35','Korean Special','Korean Special BBQ, Serves 5'),
('R012','001','01','20','Paahd Thai Noodles','Flat Rice Noodles With Tofu And Vegetables'),
('R012','001','02','10','Chou Fun','Noodles With Tofu And Vegetables');

Insert Into Order_Item(Order_Id,Restaurant_id,Item_Id,Qty_Ordered) Values
('001','R001','01','1'),
('001','R001','02','2'),
('002','R002','01','1'),
('002','R002','02','1'),
('002','R002','03','2'),
('003','R004','01','1'),
('003','R004','02','2'),
('005','R012','01','1'),
('005','R012','02','1'),
('006','R011','01','2'),
('007','R010','01','1'),
('007','R010','02','1'),
('008','R007','01','2'),
('008','R007','02','2'),
('008','R007','03','2'),
('008','R007','04','2'),
('009','R001','01','3'),
('010','R006','01','4'),
('010','R006','02','2'),
('011','R005','01','3'),
('011','R005','02','5'),
('011','R005','03','1');

Insert Into Payment(Payment_Id,Order_Id,Order_Total,Discount,Tip_Amount,Payment_Total) Values
('PY001','001','40','00','05','45'),
('PY002','002','56','06','10','60'),
('PY003','003','40','00','00','40'),
('PY005','005','30','00','10','40'),
('PY006','006','70','10','20','90'),
('PY007','007','27','00','13','50'),
('PY008','008','130','30','05','105'),
('PY009','009','30','00','05','35'),
('PY010','010','50','00','00','50'),
('PY011','011','135','20','00','115');


INSERT INTO Issues ( ISSUES_Id, CUSTOMER_id, CUSTOMER_SERVICE_id, DESCRIPTION, STATUS , Order_Id) VALUES
( 'I1', 'C001', 'CS001', 'THE PAYMENT AMOUNT WAS NOT SHOWING THE DISCOUNTED PRICE','PENDING' ,'001'),
( 'I2', 'C002', 'CS001', 'I WAS NOT ABLE TO ADD MORE THAN 2 BURGERS FOR MCDONALDS','RESOLVED','002'),
( 'I3', 'C004', 'CS002', 'THE DELIVERY WAS 40 MINUTES LATE THAN EXPECTED','PENDING','003'),
( 'I4', 'C006', 'CS001', 'MY ORDER PLACED COULD NOT BE CANCELLED.','RESOLVED','006');

#Items in the specific order:

SELECT  orders.order_id,count(orders.Order_Id) as 'number of items'
FROM Orders
INNER JOIN Order_Item
ON Orders.Order_Id=Order_Item.Order_Id
group by orders.Order_Id;

#Menu of a restaurant:

select r.Name , m.Menu_id , mi.Item_Id , mi.Item_Name, mi.Item_Description , mi.Item_Price 
from Menu m , Restaurant r , Menu_Items mi
where m.Restaurant_id = r.Restaurant_id and m.Menu_id = mi.Menu_id and mi.Restaurant_id = r.Restaurant_id and r.name ='Taco Bell';

#Number of orders places in the restaurants:

select r.Name ,count(order_id) as 'Number of Orders PLaced'
from Orders o , Restaurant r
where o.Restaurant_id= r.Restaurant_id
group by r.Name;

#Restaurants with a specific cusisne:

select r.Name  , r.Area
from Restaurant r , Restaurant_Cuisine rc
where rc.Cuisine = 'Thai' and r.Restaurant_id = rc.Restaurant_id;

#Revenues of restaurants:
  
select r.Name, sum(p.Payment_Total) as 'Total Revenue'
from Restaurant r, Payment p , Orders o
where exists( Select oi.Restaurant_id, oi.Order_Id from order_item oi where oi.Order_Id in (select p.Order_Id from Payment p))
and p.Order_Id= o.Order_Id and o.Restaurant_id = r.Restaurant_id
group by o.Restaurant_id, r.Name;

#Number of Orders of customers:
 
select r.Name, c.Customer_id  ,count(o.Order_Id) as 'Number of orders placed'
from Customer c , Orders o , Restaurant r
where c.Customer_id =o.Customer_Id and o.Restaurant_id = r.Restaurant_id
group by c.Customer_id;

#Highest rating for a particular restaurant

Select r.Name , rc.Cuisine, r.Rating
from Restaurant r, Restaurant_Cuisine rc
where r.Restaurant_id = rc.Restaurant_id and rc.Cuisine='Italian' 
and r.Rating>=All(Select R1.Rating from Restaurant R1,Restaurant_Cuisine RC1 where R1.Restaurant_id = RC1.Restaurant_id and RC1.Cuisine='Italian');


#Stored procedure to calculate revenue of the sepcified restaurant
DELIMITER //
CREATE PROCEDURE CalculateRevenue(Restaurant_Name VARCHAR(20))
BEGIN
    select r.Name, sum(p.Payment_Total) as 'Total Revenue'
	from Restaurant r, Payment p , Orders o
	where exists( Select oi.Restaurant_id, oi.Order_Id from order_item oi where oi.Order_Id in (select p.Order_Id from Payment p))
	and p.Order_Id= o.Order_Id and o.Restaurant_id = r.Restaurant_id and r.Name=Restaurant_Name
	group by o.Restaurant_id, r.Name;
END //

call CalculateRevenue('Deli');

# Trigger to update the ratings in the restaurant table
delimiter //
Create Trigger updateRatings 
After Insert on Reviews
For Each Row 
Begin 
	declare rate float;
    declare newRate float;
	if new.Stars != null then
    set rate= (select rating from restaurant where restaurant.Restaurant_id=new.Restaurant_id); 
	set newRate= (rate + new.Stars)/2;
    update Restaurant set Rating= newRate where Restaurant.Restaurant_id=new.Restaurant_id;
	end if;
End;//