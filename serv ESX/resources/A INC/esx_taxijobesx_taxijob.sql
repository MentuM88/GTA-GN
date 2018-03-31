USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_taxi','Taxi',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_taxi','Taxi',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('taxi','Taxi')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('taxi',0,'recrue','Taxi',1200,'{}','{}'),
  ('taxi',1,'novice','Transporteur',1500,'{}','{}'),
  ('taxi',2,'experimente','Taxi Aerien',2000,'{}','{}'),
  ('taxi',3,'uber','Chauffeur de luxe',2300,'{}','{}'),
  ('taxi',4,'boss','Patron',3000,'{}','{}')
;