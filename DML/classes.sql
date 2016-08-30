-- remove existing rows
TRUNCATE classes CASCADE;

INSERT INTO classes (subject, teacher_id)
VALUES
  ('Janky Python', (SELECT id FROM teachers WHERE last_name = 'Herman')),
  ('Promises', (SELECT id FROM teachers WHERE last_name = 'Reid')),
  ('Basic Queries', (SELECT id FROM teachers WHERE last_name = 'Hajek')),
  ('Defence Against the Dark Queries', (SELECT id FROM teachers WHERE last_name = 'Hassara'));
