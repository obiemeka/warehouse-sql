DROP DATABASE IF EXISTS warehouse_sales;
CREATE DATABASE IF NOT EXISTS warehouse_sales;
USE warehouse_sales;
DROP TABLE IF EXISTS distributors_purchase;
CREATE TABLE IF NOT EXISTS distributors_purchase (
purchase_date DATE		 	NOT NULL,
distributor_id INT 	 	    NOT NULL,
product_code VARCHAR(20)	NOT NULL, 
sales_channel VARCHAR(20)	NOT NULL,
quantity INT 				NOT NULL,
unit_price FLOAT 			NOT NULL);

INSERT INTO distributors_purchase (purchase_date,distributor_id,product_code,sales_channel,quantity,unit_price) VALUES
('2012-08-29',		23345,		'SUPA105',		'Online',	208,	14.50), 
('2012-08-24',		23278,		'SUPA105',		'Direct',	197,	14.50),
('2012-08-17',		23303,		'SUPA105',		'Retail',	176,	14.50),
('2012-06-10',		23353,		'SUPA105',		'Direct',	168,	14.50),
('2012-08-02',		23289,		'SUPA105',		'Retail',	166,	14.50),
('2012-06-18',		23378,		'SUPA105',		'Online',	157,	14.50),
('2012-06-24',		23283,		'SUPA105',		'Online',	142,	14.50),
('2012-08-13',		23324,		'SUPA104',		'Retail',	193,	9.99),
('2012-08-18',		23264,		'DETA800',		'Online',	205,	9.00), 
('2012-08-18',		23291,		'DETA800',		'Retail',	199,	9.00), 
('2012-08-26',		23305,		'DETA800',		'Online',	188,	9.00), 
('2012-06-25',		23350,		'DETA800',		'Online',	188,	9.00),
('2012-01-07',		23300,		'SUPA104',		'Online',	167,	9.99), 
('2012-08-25',		23348,		'SUPA104',		'Retail',	163,	9.99), 
('2012-08-11',		23290,		'SUPA104',		'Online',	170,	9.00),
('2012-01-15',		23328,		'SUPA105',		'Retail',	102,	14.50),
('2012-06-22',		23294,		'DETA800',		'Retail',	160,	9.00), 
('2012-08-15',		23371,		'SUPA103',		'Online',	204,	6.99), 
('2012-06-14',		23288,		'SUPA104',		'Direct',	141,	9.99),
('2012-06-28',		23347,		'DETA800',		'Online',	147,	9.00),
('2012-01-07',		23361,		'SUPA103',		'Online',	184,	6.99);

DROP TABLE IF EXISTS warehouse_product;
CREATE TABLE IF NOT EXISTS warehouse_product(
product_code VARCHAR(20)  	NOT NULL, 
product_name VARCHAR(100) 	NOT NULL,
unit_price FLOAT 			NOT NULL,
revenue INT 				NOT NULL); 

INSERT INTO warehouse_product (product_code,product_name,unit_price,revenue) VALUES
 ('SUPA105',	   'SuperSoftBulk2Litres',		14.50,	3016),
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50,	2857), 
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50,	2552),
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50,	2436), 
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50, 	2407),
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50,	2277),
 ('SUPA105',		'SuperSoftBulk2Litres',		14.50,	2059),
 ('SUPA104',		'SuperSoft1Litre',			9.99,	1928), 
 ('DETA800',		'DetafastStainRemover800ml',	9.00,	1845),
 ('DETA800',		'DetafastStainRemover800ml',	9.00, 	1791),
 ('DETA800',		'DetafastStainRemover800ml',	9.00,	1692),
 ('DETA800',		'DetafastStainRemover-800ml',	9.00,	1692),
 ('SUPA104',		'SuperSoft1Litre',			9.99,	1668),
 ('SUPA104',		'SuperSoft1Litre',			9.99,	1628),
 ('DETA800',		'DetafastStainRemover-800ml',	9.00,	1530),
 ('DETA800',		'DetafastStainRemover-800ml',	9.00,	1440),
 ('SUPA103',		'SuperSoft500ml',				6.99,	1426),
 ('SUPA104',		'SuperSoft1Litre',			9.99,	1409),
 ('DETA800',		'DetafastStainRemover800ml',	9.00,	1323),
 ('SUPA103',		'SuperSoft500ml',				6.99,	1286);
  
  DROP TABLE IF EXISTS warehouse_distributors;
  CREATE TABLE IF NOT EXISTS warehouse_distributors (
  distributor_id INT 					NOT NULL PRIMARY KEY,
  distributor_name VARCHAR(110) 		NOT NULL,
  distributor_country VARCHAR(100)		NOT NULL
  );

INSERT INTO warehouse_distributors (distributor_id,distributor_name,distributor_country) VALUES
 (23345,			'Devin_Abbott',				'France'),
 (23278,			'Aphrodite_Brennan',		'Malawi'),
 (23303,			'Guinevere_Key',			'Colombia'),
 (23353,			'Zahir_Fields',				'Canada'),
 (23289,			'Deacon_Craig',				'Mongolia'),
 (23378,			'Brynne_Mcgowan',			'Finland'),
 (23283,			'Lani_Sweet',				'Vanuatu'),
 (23324,			'Noble_Warner',				'Burkina_Faso'),
 (23264,			'Levi_Douglas',				'Tanzania'),
 (23291,			'Jelani_Odonnell',			'Albania'),
 (23305,			'Jared_Sandoval',			'Botswana'),
 (23350,			'Hiroko_Acevedo',			'Burundi'),
 (23300,			'Rhona_Clarke',				'Zimbabwe'),
 (23348,			'Tad_Mack',					'Iceland'),
 (23290,			'Rama_Goodwin',				'Tunisia'),
 (23328,			'Keaton_Wolfe',				'French_Southern_Territories'),
 (23294,			'Samuel_Ayala',				'Brazil'),
 (23371,			'Doris_Williams',			'Trinidad_and_Tobago'),
 (23288,			'Ingrid_Bush',				'Montserrat'),
 (23347,			'Nell_Maddox',				'Azerbaijan'),
 (23361,			'Benedict_Byrd',			'Mauritania');

SELECT * FROM distributors_purchase;
select * from distributors_purchase where purchase_date >= '2012-05-01';

select distributor_id, product_code, sales_channel from distributors_purchase where quantity < 200 and unit_price > 10;

select * from warehouse_product where product_code = 'deta800' or product_code = 'supa104';
select distinct purchase_date, distributor_id, product_code from distributors_purchase order by purchase_date;
select max(unit_price) from warehouse_product;
### query to display daily activities of customers based on the day of transaction and the revenue generated from them 
SELECT 
    a.purchase_date, a.sales_channel, b.*, c.*
FROM
    distributors_purchase a
        JOIN
    warehouse_distributors b ON a.distributor_id = b.distributor_id
        JOIN
    warehouse_product c ON a.product_code = c.product_code
GROUP BY distributor_id
ORDER BY purchase_date, revenue desc;

insert into distributors_purchase (purchase_date, distributor_id, product_code, sales_channel, quantity, unit_price) values
('2012-01-14',	23275,	'DETA800',	'Retail',	141,	9.00),
('2012-08-12',	23297,	'DETA800',	'Online',	135,	9.00),
('2012-01-31',	23327,	'DETA200',	'Retail',	176,	6.50), 
('2012-06-22',	23325,	'DETA100',	'Retail',	184,	6.00),
('2012-01-03',	23292,	'SUPA105',	'Online',	73,		14.50),
('2012-08-13',	23335,	'DETA800',	'Online',	116,	9.00), 
('2012-08-10',	23314,	'SUPA104',	'Retail',	95,		9.99),
('2012-01-23',	23329,	'PURA250',	'Retail',	203,	4.50), 
('2012-02-11',	23332,	'PURA250',	'Direct',	203,	4.50),
('2012-02-17',	23317,	'PURA250',	'Direct',	196,	4.50),
('2012-02-27',	23271,	'SUPA103',	'Retail',	125,	6.99),
('2012-06-17',	23287,	'PURA250',	'Retail',	189,	4.50),
('2012-07-22',	23349,	'DETA200',	'Retail',	126,	6.50),
('2012-06-23',	23309,	'PURA200',	'Online',	201,	3.99),
('2012-08-12',	23338,	'PURA250',	'Retail',	178,	4.50),
('2012-07-19',	23301,	'SUPA103',	'Retail',	108,	6.99),
('2012-06-15',	23320,	'DETA100',	'Direct',	125,	6.00),
('2012-07-09',	23365,	'SUPA102',	'Retail',	165,	4.50),
('2012-07-27',	23302,	'PURA500',	'Online',	105,	6.50),
('2012-08-11',	23266,	'PURA200',	'Online',	170,	3.99),
('2012-07-04',	23307,	'DETA100',	'Retail',	113,	6.00),
('2012-08-08',	23368,	'SUPA102',	'Retail',	150,	4.50),
('2012-08-08',	23286,	'DETA800',	'Online',	69,		9.00),
('2012-07-24',	23373,	'DETA200',	'Online',	95,		6.50),
('2012-07-22',	23380,	'PURA500',	'Retail',	95,		6.50),
('2012-06-17',	23284,	'PURA250',	'Retail',	135,	4.50),
('2012-06-08',	23306,	'DETA200',	'Online',	93,		6.50),
('2012-07-13',	23281,	'SUPA102',	'Retail',	134,	4.50),
('2012-08-03',	23351,	'PURA200',	'Online',	151,	3.99),
('2012-08-21',	23282,	'DETA100',	'Retail',	100,	6.00),
('2012-07-23',	23376,	'SUPA103',	'Direct',	85,		6.99);

INSERT INTO warehouse_distributors (distributor_id, distributor_name, distributor_country) VALUES
(23275,		'Ethan Gregory',			'Tuvalu'),
(23297,		'Ursula Mcconnell',			'Hungary'),
(23327,		'Fletcher Jimenez',			'Chad'),
(23325,		'Isadora Mcclure',			'Indonesia'),
(23292,		'Liberty Mcbride',			'Fiji'),
(23335,		'Noble Gilbert',			'United States'),
(23314,		'Maxine Gentry',			'Panama'),
(23329,		'Melinda Cobb',				'Uruguay'),
(23332,		'Yael Carter',				'Malaysia'),
(23317,		'Kay Buckley',				'Malta'),
(23271,		'Athena Fitzpatrick',		'Reunion'),
(23287,		'Joy Vazquez',				'Korea'),
(23349,		'Amery Frazier',			'Georgia'),
(23309,		'Buckminster Hopkins',		'Sierra Leone'),
(23338,		'George Best',				'Western Sahara'),
(23301,		'Maxwell Parker',			'Falkland Islands (Malvinas)'),
(23320,		'Lance Little',				'Croatia'),
(23365,		'Gwendolyn Walton',			'Cuba'),
(23302,		'Isaac Wolf',				'Panama'),
(23266,		'Celeste Pugh',				'Gabon'),
(23307,		'Oprah Ellis',				'Dominican Republic'),
(23368,		'Emerson Beard',			'Niue'),
(23286,		'Renee Padilla',			'Yemen'),
(23373,		'Maite Henson',				'Bangladesh'),
(23380,		'Ivory Chang',				'Tonga'),
(23284,		'Clark Weaver',				'Palau'),
(23306,		'Ima Cummings',				'Philippines'),
(23281,		'Adria Kaufman',			'Bouvet Island'),
(23351,		'Nyssa Quinn',				'Cocos (Keeling) Islands'),
(23282,		'Amir Alexander',			'Liberia'),
(23376,		'Imogene Bradshaw',			'Niger');


## view to enable all users access each sales channels' revenue on daily basis

CREATE OR REPLACE VIEW v_sales_channels_revenue AS
    SELECT 
        a.purchase_date AS date,
        a.sales_channel,
        b.distributor_name AS Customer,
        b.distributor_country AS Country,
        c.product_name AS item,
        c.revenue
    FROM
        distributors_purchase a
            JOIN
        warehouse_distributors b ON a.distributor_id = b.distributor_id
            JOIN
        warehouse_product c ON c.product_code = a.product_code
    GROUP BY Customer
    ORDER BY date , c.revenue DESC;
    
   #To make insertation of daily values to the various table easy, I decided to create a procedure for inserting values to the various tables#
   
  DROP PROCEDURE IF EXISTS input_to_distributors_purchase;
  DELIMITER $$
  CREATE PROCEDURE input_to_distributors_purchase(IN purchase_date date, IN distributor_id INT, IN product_code varchar(20),IN sales_channel varchar(20), IN quantity int, IN unit_price float)
  BEGIN 
  INSERT INTO distributors_purchase (purchase_date, distributor_id, product_code, sales_channel, quantity, unit_price) VALUES 
  (purchase_date, distributor_id, product_code, sales_channel, quantity, unit_price);
  END $$
  DELIMITER ;
  
    DROP PROCEDURE IF EXISTS input_to_warehouse_distributors;
  DELIMITER $$
  CREATE PROCEDURE input_to_warehouse_distributors(IN distributor_id int, IN distributor_name varchar(11), distributor_country varchar(100))
  BEGIN 
  INSERT INTO warehouse_distributors (distributor_id, distributor_name, distributor_country) VALUES 
  (distributor_id, distributor_name, distributor_country);
  END $$
  DELIMITER ;
  
    DROP PROCEDURE IF EXISTS input_to_warehouse_product;
  DELIMITER $$
  CREATE PROCEDURE input_to_warehouse_product(IN product_code varchar(20), IN product_name varchar(110), unit_price float, revenue int)
  BEGIN 
  INSERT INTO warehouse_product (product_code, product_name, unit_price, revenue) VALUES 
  (product_code, product_name, unit_price, revenue);
  END $$
  DELIMITER ;
  
  ## CREATING A FUNCTION TO SHOW THE SUM OF REVENUE TO CROSS CHECK THE CASHIERS RECORDS##
  
DROP FUNCTION IF EXISTS f_daily_revenue;
DELIMITER $$
CREATE FUNCTION f_daily_revenue(p_purchase_date date) RETURNS INTEGER
BEGIN
DECLARE v_daily_revenue INTEGER;
SELECT  sum(b.revenue) 
INTO v_daily_revenue FROM
  distributors_purchase a
  join warehouse_product b on a.product_code = b.product_code
   where a.purchase_date = p_purchase_date;
  RETURN v_daily_revenue;
  END$$
  DELIMITER ;

























































































































































































































 









 


 
 


 
 


















































































