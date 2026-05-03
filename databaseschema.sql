CREATE TABLE USERS (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE BOOKS (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE ISSUE (
    issue_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);

CREATE TABLE REVIEWS (
    review_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    rating INT,
    comment VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);