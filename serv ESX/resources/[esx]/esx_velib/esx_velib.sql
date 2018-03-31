USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_velib','Velib',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_velib','Velib',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('velib','Velib')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('velib',0,'recruit','Recrue',10,'{}','{}'),
  ('velib',1,'novice','Novice',25,'{}','{}'),
  ('velib',2,'experienced','Experimente',40,'{}','{}'),
  ('velib',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE velib_vehicles (
  id int(11) NOT NULL AUTO_INCREMENT,
  vehicle varchar(255) NOT NULL,
  price int(11) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE `owner_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `owned_velib` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `rented_velib` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `velib_categories` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `velib_categories` (name, label) VALUES
  ('velib','Velos')
;

CREATE TABLE `velib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO velib (name, model, price, category) VALUES
  ('BMX','bmx',100,'velib'),
  ('Velo Hollandais','cruiser',250,'velib'),
  ('VTT','scorcher',550,'velib'),
  ('Course Compet','TriBike',320,'velib'),
  ('Course Compet2','TriBike',320,'velib'),
  ('Course Compet3','TriBike',320,'velib')
;
