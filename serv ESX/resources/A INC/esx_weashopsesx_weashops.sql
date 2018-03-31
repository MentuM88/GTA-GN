USE `essentialmode`;

CREATE TABLE `weashops` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `licenses` (type, label) VALUES
  ('weapon', "Permis de port d'arme")
;

INSERT INTO `weashops` (name, item, price) VALUES
	('GunShop','WEAPON_PISTOL',450),
	('BlackWeashop','WEAPON_PISTOL',450),
	('GunShop', 'WEAPON_FLASHLIGHT', 60),
	('BlackWeashop', 'WEAPON_FLASHLIGHT', 60),
	('GunShop', 'WEAPON_MACHETE', 90),
	('BlackWeashop', 'WEAPON_MACHETE', 110),
	('GunShop', 'WEAPON_NIGHTSTICK', 60),
	('BlackWeashop', 'WEAPON_NIGHTSTICK', 60),
	('GunShop', 'WEAPON_BAT', 100),
	('BlackWeashop', 'WEAPON_BAT', 100),
	('GunShop', 'WEAPON_STUNGUN', 500),
	('BlackWeashop', 'WEAPON_STUNGUN', 500),
	('GunShop', 'WEAPON_MICROSMG', 15000),
	('BlackWeashop', 'WEAPON_MICROSMG', 15000),
	('GunShop', 'WEAPON_PUMPSHOTGUN', 34000),
	('BlackWeashop', 'WEAPON_PUMPSHOTGUN', 35000),
	('GunShop', 'WEAPON_ASSAULTRIFLE', 100000),
	('BlackWeashop', 'WEAPON_ASSAULTRIFLE', 110000),
	('GunShop', 'WEAPON_SPECIALCARBINE', 150000),
	('BlackWeashop', 'WEAPON_SPECIALCARBINE', 165000),
	('GunShop', 'WEAPON_SNIPERRIFLE', 220000),
	('BlackWeashop', 'WEAPON_SNIPERRIFLE', 240000),
	('GunShop', 'WEAPON_FIREWORK', 180000),
	('BlackWeashop', 'WEAPON_FIREWORK', 200000),
	('GunShop', 'WEAPON_GRENADE', 5000),
	('BlackWeashop', 'WEAPON_GRENADE', 6500),
	('GunShop', 'WEAPON_BZGAS', 2000),
	('BlackWeashop', 'WEAPON_BZGAS', 3500),
	('GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	('BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
	('GunShop', 'WEAPON_BALL', 50),
	('BlackWeashop', 'WEAPON_BALL', 50),
	('GunShop', 'WEAPON_SMOKEGRENADE', 1000),
	('BlackWeashop', 'WEAPON_SMOKEGRENADE', 1000),
	('BlackWeashop', 'WEAPON_APPISTOL', 11000),
	('BlackWeashop', 'WEAPON_CARBINERIFLE', 120000),
	('BlackWeashop', 'WEAPON_HEAVYSNIPER', 300000),
