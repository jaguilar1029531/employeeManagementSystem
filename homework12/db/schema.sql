DROP DATABASE IF EXISTS users;
CREATE DATABASE users;
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT
);

-- Insert set of records
INSERT INTO workouts (category,duration,reps,sets)
VALUES ("Chest",45,12,4);

INSERT INTO workouts (category,duration,reps,sets)
VALUES ("arms",35,16,4);

INSERT INTO workouts (category,duration,reps,sets)
VALUES ("Lower Body",45,16,4);

INSERT INTO workouts (category,duration,reps,sets)
VALUES ("Back",20,16,4);

