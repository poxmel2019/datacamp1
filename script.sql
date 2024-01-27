use CampusEats;

go;

-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7

/*
	Students can place orders for meals, customize meals and share orders with their fellow students
student_id, meal_id, time
	CampusEats contains a delivery aspect allowing students to choose flexible delivery time slots to accommodate different class schedules and on-campus events. 
order_id, time
	CampusEats sources food from local suppliers and farmers for fresh, locally-produced ingredients, supporting the community (tracking community support and engagement).
supplier_id, food_id
	CampusEats offers special menus and promotions for on-campus events, ensuring timely and relevant food options.
event_id, menu_id, promotion_id
	CampusEats provides detailed nutritional information for each menu item, including calorie count, nutrient content, and allergen information.
food_id, calorie_count, nutruent_content, allergen_information
	CampusEats includes a feedback and ratings system to gather user reviews, allowing continuous improvement of food quality and service.
student_id, food_rating, service_rating, feedback
	CampusEats serves college campuses in the city of Boston and Cambridge specifically.
campus_id, campus_name, city_id
*/

/*
Yell-O-Glow Corporation
Haymarket
US Food Service
Yankee Lobster
James Hook
Good Seasons Trading
Red's Best Seafood at the Boston Public Market
Food Pak Express

Boston 
Cambridge 
*/

-- 1
create table city
(
city_id int identity(1,1) primary key,
city_name varchar(100)
)
;

insert into city
(city_name)
values
('Boston'),
('Cambridge')
;

select * from city;

-- 2
create table campus
(campus_id int identity(1,1) primary key,
campus_name varchar(256),
city_id int references city(city_id)
)
;

insert into campus
(campus_name, city_id)
values
('Charles River Campus',1),
('Fenway Campus',1),
('Medical Campus',2)
;

select * from campus;

-- 3
create table faculty
(faculty_id int identity(1,1) primary key,
faculty_name varchar(100),
campus_id int references campus (campus_id)
)
;

insert into faculty
(faculty_name, campus_id)
values
('Computer Science', 1),
('Data Science', 2),
('Medical Science', 3),
('Engineering',1),
('Economics',2),
('Sport',3)
;

select * from faculty;

-- 4
create table speciality
(speciality_id int identity(1,1) primary key,
speciality_name varchar(256),
faculty_id int references faculty (faculty_id)
)
;

insert into speciality
(speciality_name, faculty_id)
values
('Software Engineering',1),
('Data Analytics',2),
('Healthcare',3),
('QA Engineering',1),
('Automation and control',1),
('Mobile Application',1),
('Data Engineering',2),
('AI',2),
('Surgery',3)

;

select * from speciality;

-- 5
create table student
(
student_id int identity(1,1) primary key,
firstname varchar(50),
lastname varchar(50),
speciality_id int references speciality(speciality_id)
)
;

insert into student
(firstname,lastname,speciality_id)
values
('John','Doe',1),
('Jane','Doe',2),
('John','Smith',3),
('Hon','Gildon',6),
('Pedro','Carlos',7),
('Vasya','Pupkin',9)
;

select * From student;

-- 6
create table supplier_farmer
(
supplier_farmer_id int identity(1,1),
supplier_farmer_name varchar(256)
)
;

alter table supplier_farmer
add primary key (supplier_farmer_id)
;

insert into supplier_farmer
(supplier_farmer_name)
values
('Yell-O-Glow Corporation'),
('Haymarket'),
('US Food Service'),
('Yankee Lobster'),
('James Hook'),
('Good Seasons Trading'),
('Red Best Seafood at the Boston Public Market')
;

select * from supplier_farmer;

-- 7
create table ingredient_type
(ingredient_type_id int identity(1,1) primary key,
ingredient_type_name varchar(100)
)
;

insert into ingredient_type
(ingredient_type_name)
values
('meat'),
('bird'),
('fish'),
('vegetable'),
('fruit')
;

select * from ingredient_type;

-- 8
create table ingredient
(ingredient_id int identity(1,1) primary key,
ingredient_name varchar(100),
ingredient_type int references ingredient_type(ingredient_type_id)
)
;

insert into ingredient
(ingredient_name,ingredient_type)
values
('mutton',1),
('beef',1),
('pork',1),
('chiken',2),
('duck',2),
('goose',2),
('potato',4),
('tomato',4),
('onion',4),
('parrot',4),
('apple',5)
;

select * from ingredient;

-- 9
create table supplier_farmer_ingredient
(supplier_farmer_ingredieint_id int identity(1,1) primary key,
supplier_farmer_id int references supplier_farmer(supplier_farmer_id),


/*
-- 6
create table meal
(meal_id int identity(1,1) primary key)

*/


-- 1
-- Students can place orders for meals, customize meals and share orders with their fellow students




-- 2
-- 3
-- 4
-- 5
-- 6
-- 7