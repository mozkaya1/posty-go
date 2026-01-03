-- +goose Up
-- +goose StatementBegin
CREATE TABLE posts(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  createdAt DATETIME NOT NULL
);

INSERT INTO posts (title, content, createdAt) 
VALUES ('Getting Started with SQL', 'SQL is a powerful language for managing relational databases.', '2024-01-15 09:30:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Web Development Best Practices', 'Learn the latest techniques for building modern web applications.', '2024-01-18 14:20:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Understanding Database Indexing', 'Indexes can significantly improve query performance when used correctly.', '2024-01-22 11:45:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('The Art of Debugging', 'Effective debugging strategies can save hours of development time.', '2024-01-25 16:10:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Introduction to Machine Learning', 'ML algorithms are transforming how we analyze data and make predictions.', '2024-01-30 10:15:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('API Design Principles', 'Well-designed APIs make integration easier and improve developer experience.', '2024-02-03 13:40:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Containerization with Docker', 'Docker simplifies application deployment across different environments.', '2024-02-07 08:55:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('JavaScript ES6 Features', 'Modern JavaScript offers many powerful features for developers.', '2024-02-12 15:25:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Cybersecurity Fundamentals', 'Understanding security basics is essential for every developer.', '2024-02-16 12:30:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Cloud Computing Overview', 'Cloud platforms offer scalable and cost-effective solutions.', '2024-02-20 09:10:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Agile Methodology Explained', 'Agile practices help teams deliver value faster and more efficiently.', '2024-02-24 17:45:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Data Visualization Techniques', 'Effective data visualization communicates insights clearly and powerfully.', '2024-02-28 14:50:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Mobile App Development Trends', 'Stay updated with the latest trends in mobile application development.', '2024-03-03 11:20:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Testing Strategies for Reliable Code', 'Comprehensive testing ensures software quality and reliability.', '2024-03-07 10:05:00');

INSERT INTO posts (title, content, createdAt) 
VALUES ('Career Growth in Tech', 'Strategies for advancing your career in the technology industry.', '2024-03-11 13:15:00');
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE posts;
-- +goose StatementEnd

