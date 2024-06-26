-- Table: groups
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name VARCHAR (255) UNIQUE NOT NULL
);

-- Table: students
DROP TABLE IF EXISTS students;
CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR (255) UNIQUE NOT NULL,
    group_id INTEGER NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: lecturers
DROP TABLE IF EXISTS lecturers;
CREATE TABLE lecturers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    lecturer_name VARCHAR (255) UNIQUE NOT NULL
);

-- Table: subjects
DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name VARCHAR (255)  NOT NULL,
    lecturer_id INTEGER,
    FOREIGN KEY (lecturer_id) REFERENCES lecturers (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: grades
DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    grade INTEGER NOT NULL,
    student_id INTEGER,
    subject_id INTEGER,
    date_of DATE,
    FOREIGN KEY (student_id) REFERENCES students (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);