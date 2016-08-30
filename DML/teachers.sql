-- delete existing rows
TRUNCATE teachers CASCADE;

-- create teachers
INSERT INTO teachers (first_name, last_name)
VALUES
  ('Michael', 'Herman'),
  ('Wes', 'Reid'),
  ('Robby', 'Hajek'),
  ('Ben', 'Hassara');

UPDATE classes
SET teacher_id = (SELECT teacher_id FROM teachers WHERE last_name = 'Herman')
WHERE subject = 'g_30';
