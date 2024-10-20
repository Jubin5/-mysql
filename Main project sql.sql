create database library;
use library;

create table branch( branch_no int primary key,manager_id int,branch_address varchar(255),contact_no varchar(20));

create table employee(Employee_id int primary key,Employee_name varchar(100),position varchar(50),salary decimal(10,2),branch_no int,
foreign key (branch_no) references branch(branch_no));

create table books(ISBN varchar(13) ,book_title varchar(255),
category varchar(255),rental_price bigint, sta_tus varchar(5),author varchar(255),publisher varchar(255));

create table customer(customer_id int primary key,customer_name varchar(100),customer_address varchar(255),reg_date date);  

create table issue_status(issue_id int primary key,customer_id int,issued_book_name varchar(255),issue_date date,ISBN varchar(13),
Foreign key (customer_id)references customer(customer_id));

create table return_status( return_id int primary key,return_cust int,return_book varchar(255),return_date date,ISBN_book_2 varchar(13),
foreign key (ISBN_book_2) references books(ISBN),
foreign key(return_cust) references customer(customer_id));

INSERT INTO Branch VALUES
(11, 101, '123 Library Street, City A', '123-456-7890'),
(22, 102, '456 Book Avenue, City B', '098-765-4321'),
(33, 103, '789 Knowledge Blvd, City C', '567-890-1234'),
(44, 104, '321 Education Lane, City D', '890-123-4567'),
(55, 105, '654 Research Road, City E', '432-109-8765'),
(66, 106, '987 Literacy Circle, City F', '111-222-3333'),
(77, 107, '654 Culture St, City G', '555-666-7777'),
(88, 108, '323 History Ave, City H', '444-555-6666'),
(99, 109, '456 Horizon St, City I', '333-444-5555'),
(100, 110, '789 Liberty Ave, City J', '222-333-4444');

INSERT INTO Employee VALUES
(11, 'John Doe', 'Manager', 55000, 1),
(22, 'Jane Smith', 'Clerk', 35000, 1),
(33, 'Robert Brown', 'Manager', 58000, 2),
(44, 'Emily White', 'Assistant', 32000, 2),
(55, 'Michael Green', 'Clerk', 34000, 3),
(66, 'Laura Blue', 'Manager', 60000, 3),
(77, 'James Yellow', 'Assistant', 31000, 4),
(88, 'Sarah Black', 'Clerk', 36000, 5),
(99, 'William Red', 'Manager', 59000, 6),
(100, 'Olivia Purple', 'Assistant', 33000, 7);

INSERT INTO Books VALUES
('978-0-123456-47-2', 'The Great Gatsby', 'Fiction', 12.99, 'Yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-1-567890-47-5', '1984', 'Fiction', 10.50, 'No', 'George Orwell', 'Secker & Warburg'),
('978-0-876543-21-9', 'To Kill a Mockingbird', 'Fiction', 14.00, 'Yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0-234567-89-0', 'Moby Dick', 'Fiction', 9.99, 'Yes', 'Herman Melville', 'Harper & Brothers'),
('978-0-345678-90-1', 'The Odyssey', 'Epic', 11.50, 'No', 'Homer', 'Penguin Classics'),
('978-0-456789-01-2', 'The Iliad', 'Epic', 13.00, 'Yes', 'Homer', 'Penguin Classics'),
('978-0-567890-12-3', 'Pride and Prejudice', 'Romance', 15.99, 'Yes', 'Jane Austen', 'T. Egerton'),
('978-0-678901-23-4', 'War and Peace', 'Historical Fiction', 18.50, 'No', 'Leo Tolstoy', 'The Russian Messenger'),
('978-0-789012-34-5', 'Crime and Punishment', 'Philosophical Fiction', 13.99, 'Yes', 'Fyodor Dostoevsky', 'The Russian Messenger'),
('978-0-890123-45-6', 'The Catcher in the Rye', 'Fiction', 9.50, 'Yes', 'J.D. Salinger', 'Little, Brown and Company');

INSERT INTO Customer VALUES
(11, 'Alice Brown', '456 Oak Street, City A', '2024-01-15'),
(22, 'Bob Smith', '789 Pine Avenue, City B', '2024-02-10'),
(33, 'Charlie Johnson', '123 Maple Blvd, City C', '2024-03-20'),
(44, 'David Green', '456 Elm St, City D', '2024-04-22'),
(55, 'Emma White', '789 Birch Road, City E', '2024-05-05'),
(66, 'Frank Black', '123 Cedar Avenue, City F', '2024-06-08'),
(77, 'Grace Red', '456 Ash Blvd, City G', '2024-07-15'),
(88, 'Henry Blue', '789 Fir Road, City H', '2024-08-12'),
(99, 'Ivy Purple', '123 Spruce St, City I', '2024-09-14'),
(100, 'Jack Yellow', '456 Willow Blvd, City J', '2024-10-10');

INSERT INTO issue_status VALUES
(11, 1, 'The Great Gatsby', '2024-09-01', '978-0-123456-47-2'),
(22, 2, '1984', '2024-09-05', '978-1-567890-47-5'),
(33, 3, 'To Kill a Mockingbird', '2024-09-10', '978-0-876543-21-9'),
(44, 4, 'Moby Dick', '2024-09-12', '978-0-234567-89-0'),
(55, 5, 'The Odyssey', '2024-09-15', '978-0-345678-90-1'),
(66, 6, 'The Iliad', '2024-09-20', '978-0-456789-01-2'),
(77, 7, 'Pride and Prejudice', '2024-09-22', '978-0-567890-12-3'),
(88, 8, 'War and Peace', '2024-09-25', '978-0-678901-23-4'),
(99, 9, 'Crime and Punishment', '2024-09-28', '978-0-789012-34-5'),
(100, 10, 'The Catcher in the Rye', '2024-09-30', '978-0-890123-45-6');

INSERT INTO return_status VALUES
(11, 11, 'The Great Gatsby', '2024-09-10', '978-0-123456-47-2'),
(22, 22, '1984', '2024-09-15', '978-1-567890-47-5'),
(33, 33, 'To Kill a Mockingbird', '2024-09-18', '978-0-876543-21-9');
select * from branch;
select * from employee;
select * from books;
ALTER TABLE Books MODIFY ISBN VARCHAR(30);
select * from customer;
select * from issue_status;
select * from return_status;
describe books;
select employee_name,salary from employee order by    salary;             

 SELECT Books.book_title, Customer.customer_name
FROM issue_status
JOIN Books ON issue_status.ISBN = Books.ISBN
JOIN Customer ON issue_status.customer_id = Customer.customer_Id;


alter table issue_status modify ISBN varchar(30);
alter table return_status modify ISBN_book_2 varchar(30);


select book_title,category,rental_price from books;

select employee_name,salary from employee order by salary;

select customer_name from customer where customer_id in (Select customer_id from issue_status);

alter table return_status rename column return_cust to return_customer_id;

select category, count(*) from books group by category;

SELECT Books.book_title, Customer.Customer_name
FROM issue_status
JOIN Books ON issue_status.ISBN = Books.ISBN
JOIN Customer ON issue_status.issue_id = Customer.Customer_Id;


select Employee_name,position from employee where salary>10000;

SELECT Customer.Customer_name
FROM Customer
LEFT JOIN issue_status ON Customer.Customer_Id = issue_status.customer_id
WHERE Customer.reg_date < '2022-01-01'
AND issue_status.issue_id IS NULL;

select branch_no,count(*) from employee group by branch_no;

select customer_name from customer where customer_id in (select customer_id from issue_status where issue_date >"2023-06-01");

select book_title from books where book_title like "%history%";

select branch_no,count(*) as employee_count from employee group by branch_no having employee_count > 5;

SELECT Employee.Employee_name, Branch.branch_address
FROM Employee
JOIN Branch ON Employee.Employee_Id = Branch.manager_Id;

SELECT Customer.Customer_name
FROM issue_status
JOIN Books ON issue_status.ISBN = Books.ISBN
JOIN Customer ON issue_status.customer_id = Customer.Customer_Id
WHERE Books.rental_Price > 25;
