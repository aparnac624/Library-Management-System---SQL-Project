-- creating database library
create database library;
use library;

-- creating tables Branch, Employee, Books, Customer, IssueStatus, ReturnStatus
-- 1. creating Branch table
create table Branch (
Branch_no int PRIMARY KEY, 
Manager_Id int, 
Branch_address varchar(50), 
Contact_no varchar(25)
);

-- 2. creating Employee table
create table Employee (
Emp_Id int PRIMARY KEY, 
Emp_name varchar(50),
Position varchar(50), 
Salary decimal(10,2), 
Branch_no int,
FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);


-- 3. creating Books table
create table Books (
ISBN int PRIMARY KEY, 
Book_title varchar(100), 
Category varchar(50), 
Rental_Price decimal(10,2), 
Status enum('yes','no'), 
Author varchar(100), 
Publisher varchar(100)
);

-- 4. creating Customer table
create table Customer (
Customer_Id int PRIMARY KEY, 
Customer_name varchar(50), 
Customer_address varchar(100), 
Reg_date DATE
);

-- 5. creating IssueStatus table
create table IssueStatus (
Issue_Id int PRIMARY KEY, 
Issued_cust int, 
Issued_book_name varchar(100),
Issue_date DATE, 
Isbn_book int,
FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

-- 6. creating ReturnStatus table
create table ReturnStatus (
Return_Id int PRIMARY KEY, 
Return_cust int, 
Return_book_name varchar(100), 
Return_date DATE, 
Isbn_book2 int,
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)                            
);


-- inserting values to the tables
insert into Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
values
(1, 101, '123 Connaught Place, New Delhi', '9547645231'),
(2, 102, '456 MG Road, Bengaluru', '9852642715'),
(3, 103, '789 Juhu Beach, Mumbai', '9548625732'),
(4, 103, 'Karol Bagh, Delhi', '9876543233'),
(5, 104, 'CG Road, Ahmedabad, Gujarat', '9876543244'),
(6, 105, 'Dadar West, Mumbai, Maharashtra', '9876543255'),
(7, 106, 'T Nagar, Chennai, Tamil Nadu', '9876543266'),
(8, 107, 'Andheri East, Mumbai, Maharashtra', '9876543277'),
(9, 108, 'Banjara Hills, Hyderabad, Telangana', '9876543288'),
(10, 109, 'Velachery, Chennai, Tamil Nadu', '9876543299');

insert into Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
values
(101, 'Amit Sharma', 'Manager', 75000, 1),
(102, 'Priya Mehta', 'Librarian', 35000, 8),
(103, 'Ravi Kumar', 'Manager', 80000, 9),
(104, 'Sita Gupta', 'Librarian', 45000, 10),
(105, 'Vikram Singh', 'Manager', 90000, 3),
(106, 'Anjali Desai', 'Librarian', 30000, 5),
(107, 'Harish Patel', 'Librarian', 32000, 7),
(108, 'Sunita Nair', 'Librarian', 34000, 6),
(109, 'Anjali Sharma', 'Assistant', 37928, 4),
(110, 'Divya', 'Assistant', 75765, 2);

insert into Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
values
(1001, 'The Guide', 'Fiction', 150.00, 'yes', 'R.K. Narayan', 'Indian Thought Publications'),
(1002, 'Freedom at Midnight', 'Non-Fiction', 200.00, 'yes', 'Larry Collins', 'Vikas Publishing House'),
(1003, 'The God of Small Things', 'Fiction', 180.00, 'yes', 'Arundhati Roy', 'Penguin Books India'),
(1004, 'Midnight’s Children', 'Fiction', 220.00, 'no', 'Salman Rushdie', 'Random House India'),
(1005, 'The White Tiger', 'Fiction', 190.00, 'yes', 'Aravind Adiga', 'HarperCollins India'),
(1006, 'The Immortals of Meluha', 'Fantasy', 250.00, 'no', 'Amish Tripathi', 'Westland Ltd.'),
(1007, 'India After Gandhi', 'Non-Fiction', 300.00, 'yes', 'Ramachandra Guha', 'HarperCollins India'),
(1008, 'Wings of Fire', 'Biography', 180.00, 'yes', 'Dr. A.P.J. Abdul Kalam', 'Haranand Publications'),
(1009, 'A Suitable Boy', 'Drama', 34, 'yes', 'Vikram Seth', 'Orion Books'),
(1010, 'Train to Pakistan', 'Historical', 25, 'yes', 'Khushwant Singh', 'Penguin');


insert into Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
values
(1, 'Rajesh Kumar', '101 Ashoka Road, New Delhi', '2021-02-10'),
(2, 'Meera Reddy', '102 BTM Layout, Bengaluru', '2020-06-15'),
(3, 'Ankur Mishra', '303 Marine Drive, Mumbai', '2019-11-30'),
(4, 'Sanya Patel', '104 Andheri East, Mumbai', '2022-01-05'),
(5, 'Ravi Yadav', '505 Park Street, Kolkata', '2021-03-21'),
(6, 'Neha Iyer', '808 South Extension, New Delhi', '2018-08-17'),
(7, 'Vikash Singh', '606 M.G. Road, Bengaluru', '2020-07-09'),
(8, 'Pooja Joshi', '202 Alambagh, Lucknow', '2021-05-13'),
(9, 'Sanya Malhotra', 'Nandanam, Sasthamangalam, Trivandrum', '2023-10-21'),
(10, 'Anjali Nair', '102 Kashi Street, Pune', '2023-10-06');



insert into IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, ISBN_book)
values
(1, 1, 'The Guide', '2023-01-10', 1001),
(2, 2, 'Freedom at Midnight', '2023-02-01', 1002),
(3, 3, 'The God of Small Things', '2023-03-01', 1003),
(4, 4, 'Midnight’s Children', '2023-04-15', 1004),
(5, 5, 'The White Tiger', '2023-02-25', 1005),
(6, 6, 'The Immortals of Meluha', '2023-03-10', 1006),
(7, 7, 'India After Gandhi', '2023-05-20', 1007),
(8, 8, 'Wings of Fire', '2023-05-10', 1008),
(9, 9, 'A Suitable Boy', '2023-04-14', 1009),
(10, 10, 'Train to Pakistan', '2024-05-23', 1010);

insert into ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, ISBN_book2)
values
(1, 1, 'The Guide', '2023-02-15', 1001),
(2, 2, 'Freedom at Midnight', '2023-03-01', 1002),
(3, 3, 'The God of Small Things', '2023-03-10', 1003),
(4, 4, 'Midnight’s Children', '2023-05-01', 1004),
(5, 5, 'The White Tiger', '2023-03-28', 1005),
(6, 6, 'The Immortals of Meluha', '2023-04-01', 1006),
(7, 7, 'India After Gandhi', '2023-06-01', 1007),
(8, 8, 'Wings of Fire', '2023-06-15', 1008),
(9, 9, 'A Suitable Boy', '2023-12-12', 1009),
(10, 10, 'Train to Pakistan', '2024-09-24', 1010);


select * from Branch;
select * from Employee;
select * from Books;
select * from Customer;
select * from IssueStatus;
select * from ReturnStatus;


-- Questions --------------------------------------------------
-- 1. Retrieve the book title, category, and rental price of all available books.
select Book_title, Category, Rental_Price 
from Books 
where Status = 'yes';


-- 2. List the employee names and their respective salaries in descending order of salary.
select Emp_name, Salary from Employee ORDER BY Salary desc;


-- 3. Retrieve the book titles and the corresponding customers who have issued those books.
select Book_title, Customer_name
from Books
join IssueStatus ON Books.ISBN = IssueStatus.Isbn_book
join Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;


-- 4. Display the total count of books in each category.
select Category,  count(*) as 'Total Count of Books'
from Books 
group by Category;


-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
select Emp_name, Position, Salary 
from Employee
where Salary > 50000;


-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
-- inserting a new value to Customer Table who registered before 2022-01-01
insert into Customer ( Customer_Id, Customer_name, Customer_address, Reg_date )
values (11, 'Deepa Rajan', 'Alappuzha', '2021-12-15');

-- listing customer names who registered before 2022-01-01 and have not issued any books yet.
select Customer_name
from Customer
where Reg_date < '2022-01-01' and Customer_Id not in ( select Issued_cust from IssueStatus );


-- 7. Display the branch numbers and the total count of employees in each branch.
select Branch_no, count(*) as 'Total count of employees'
from Employee
group by Branch_no; 


-- 8. Display the names of customers who have issued books in the month of June 2023.
-- updating the issue date of one customer to the month of June 2023
update IssueStatus 
set Issue_date = '2023-06-18'
where Issue_Id = 7;

-- displays the name of customers who have issued books in the month of June 2023
select distinct Customer_name
from Customer
join IssueStatus on Customer.Customer_Id = IssueStatus.Issued_cust
where MONTH(Issue_date) = 6 AND YEAR(Issue_date) = 2023;


-- 9. Retrieve book_title from book table containing history.
-- inserting a book with title containing history 
insert into Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
values
(1011, 'A Brief History of Time: From the Big Bang to Black Holes', 'Cosmology', 500.00, 'yes', 'Stephen Hawking', 'Bantam Dell Publishing Group');

select * from Books;

-- displays book titles containing word history from books table 
select Book_title
from Books
where Book_title like '%history%';


-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
-- inserting one more employee to employee table 
insert into Employee ( Emp_Id, Emp_name, Position, Salary, Branch_no )
values 
(111, 'Aravind Prem', 'Manager', 70000.00, 2);

insert into Employee ( Emp_Id, Emp_name, Position, Salary, Branch_no )
values
(112, 'Shrishti Vikram', 'Assistant', 40000.00, 2),
(113, 'Gayathri Nair', 'Librarian', 25000.00, 2),
(114, 'Kane Wilson', 'Assisstant', 35000.00, 2),
(115, 'Maya Shankar', 'Assisstant', 28000.00, 2),
(116, 'Arav Seth', 'Manager', 75000.00, 2);

select * from Employee;
select Branch_no, count(*) as 'Count of Employees'
from Employee
group by Branch_no 
having count(*) > 5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.
-- inserting branch details of two manager employees (already added) into Branch table 
insert into Branch ( Branch_no, Manager_Id, Branch_address, Contact_no )
values
(11, 111, '321 Street, Bangalore', '9645823156'),
(12, 116, 'Jagathy Street, Trivandrum', '8564231526');

select * from Branch;

select Employee.Emp_name as 'Manager Name', Branch.Branch_address as 'Branch address'
from Employee
join Branch on Branch.Branch_no = Employee.Branch_no
where Employee.Position = 'Manager';


-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
select distinct Customer.Customer_name, Books.Rental_Price, IssueStatus.Issued_book_name
from Customer
join IssueStatus on Customer.Customer_Id = IssueStatus.Issued_cust
join Books on IssueStatus.Isbn_book = Books.ISBN
where  Books.Rental_Price > 25;

