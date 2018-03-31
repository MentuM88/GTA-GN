USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_reporter','Journaliste',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_reporter','Journaliste',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('reporter','Journaliste')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('reporter',0,'recrue','Recrue',12,'{}','{}'),
  ('reporter',1,'novice','Novice',24,'{}','{}'),
  ('reporter',2,'boss','Patron',0,'{}','{}')
;


