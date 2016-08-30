DROP DATABASE IF EXISTS galvanize;
CREATE DATABASE galvanize;
\connect galvanize;


CREATE TABLE students (
  id serial primary key,
  first_name varchar,
  last_name varchar,
  jobs_applied int DEFAULT 0
);

CREATE TABLE teachers (
  id serial primary key,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL
);

CREATE TABLE classes (
  id serial primary key,
  subject varchar NOT NULL
);

ALTER TABLE classes
ADD teacher_id int REFERENCES teachers(id);

CREATE TABLE classes_students (
  class_id int REFERENCES classes(id),
  student_id int REFERENCES students(id)
);
