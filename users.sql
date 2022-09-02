CREATE DATABASE demodb;

USE demodb;

CREATE TABLE tbl_users
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO tbl_users(email, password) VALUES ("shankar@example.com", "12345");
INSERT INTO tbl_users(email, password) VALUES ("teja@example.com", "12345");

select * from tbl_users;