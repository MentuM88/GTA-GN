INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_armurier','Delta Secu',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_armurier','Delta Secu',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_armurier', 'Delta Secu', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('armurier', 'Delta Secu', 1);


INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('armurier', 0, 'apprenti', 'Recrue', 800, '{}', '{}'),
('armurier', 4, 'agent', 'Agent', 1200, '{}', '{}'),
('armurier', 5, 'conseiller', 'Conseiller', 1600, '{}', '{}'),
('armurier', 6, 'boss', 'Boss', 2000, '{}', '{}');