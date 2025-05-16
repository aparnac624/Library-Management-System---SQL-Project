# Library-Management-System---SQL-Project

# 📚 Library Management System – SQL Project

This project is a database system for managing a library's operations using MySQL. It keeps track of books, branches, employees, customers, and book issue/return status. The project also includes a set of SQL queries for retrieving specific insights from the database.

---

## 🗂️ Tables Created

1. **Branch**
2. **Employee**
3. **Books**
4. **Customer**
5. **IssueStatus**
6. **ReturnStatus**

---

## 🧾 Table Schemas

### 1. Branch
- `Branch_no` (Primary Key)
- `Manager_Id`
- `Branch_address`
- `Contact_no`

### 2. Employee
- `Emp_Id` (Primary Key)
- `Emp_name`
- `Position`
- `Salary`
- `Branch_no` (Foreign Key → Branch.Branch_no)

### 3. Books
- `ISBN` (Primary Key)
- `Book_title`
- `Category`
- `Rental_Price`
- `Status` (Yes = available, No = not available)
- `Author`
- `Publisher`

### 4. Customer
- `Customer_Id` (Primary Key)
- `Customer_name`
- `Customer_address`
- `Reg_date`

### 5. IssueStatus
- `Issue_Id` (Primary Key)
- `Issued_cust` (Foreign Key → Customer.Customer_Id)
- `Issued_book_name`
- `Issue_date`
- `Isbn_book` (Foreign Key → Books.ISBN)

### 6. ReturnStatus
- `Return_Id` (Primary Key)
- `Return_cust`
- `Return_book_name`
- `Return_date`
- `Isbn_book2` (Foreign Key → Books.ISBN)

---

## 📊 SQL Queries Implemented

1. Retrieve the book title, category, and rental price of all available books.
2. List the employee names and their respective salaries in descending order of salary.
3. Retrieve the book titles and the corresponding customers who have issued those books.
4. Display the total count of books in each category.
5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
7. Display the branch numbers and the total count of employees in each branch.
8. Display the names of customers who have issued books in the month of June 2023.
9. Retrieve `book_title` from book table containing the word "history".
10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
11. Retrieve the names of employees who manage branches and their respective branch addresses.
12. Display the names of customers who have issued books with a rental price higher than Rs. 25.

---

## 🖼️ Screenshots

All query outputs are attached as screenshots for reference.

---

## 🧑‍💻 Tools Used

- MySQL (Workbench or Command Line)
- Git & GitHub
- VS Code / Notepad++ (for query writing)

---

## 📌 Author

Aparna C
[GitHub Profile](https://github.com/aparnac624/Library-Management-System---SQL-Project/)


