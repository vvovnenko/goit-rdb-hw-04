CREATE SCHEMA LibraryManagement;

USE LibraryManagement;

CREATE TABLE authors (
    author_1d INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR (255)
);

CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (255),
    publication_year YEAR,
	author_id INT,
	genre_id INT,
	FOREIGN KEY (author_id) REFERENCES authors(author_1d),
	FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);

CREATE TABLE user_id (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR (255),
    email VARCHAR(255)
);

CREATE TABLE borrowed_books (
	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES user_id(user_id)
);
