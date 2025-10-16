Create database HR_Management 
use HR_Management 
  
Create Table Employees
(Employee_ID int primary key auto_increment,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(100),
Phone varchar(20),
Hire_Date DATE,
Department_ID int,
Manager_ID int,
Salary Decimal(10,2),
Foreign key (Department_ID) references Departments(Department_ID),
Foreign key (Manager_ID) references Employees(Employee_ID)
);

CREATE TABLE Departments (
Department_ID int primary key auto_increment,
Department_Name varchar(100),
Manager_ID int,
Foreign key (Manager_ID) references Employees(Employee_ID)
);

Create table Performance_Reviews (
Review_ID int primary key auto_increment,
Employee_ID int,
Review_Date Date,
Performance_Score enum ('Excellent', 'Good', 'Average', 'Poor'), 
Comments text,
Foreign key (Employee_ID) references Employees(Employee_ID)
);

CREATE TABLE Payroll (
    Payroll_ID int primary key auto_increment,
    Employee_ID int,
    Payment_Date DATE,
    Amount DECIMAL(10,2),
    Payment_Method ENUM('Bank Transfer', 'Check'),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
    );

-- INSERTING INTO Departments
INSERT INTO Departments 
(Department_ID, Department_Name, Manager_ID) VALUES
(1, 'HR', NULL),
(2, 'IT', NULL),
(3, 'Finance', NULL),
(4, 'Marketing', NULL);


-- INSERTING INTO Employees
INSERT INTO Employees (First_Name, Last_Name, Email, Phone, Hire_Date, Department_ID, Manager_ID, Salary) VALUES
('Alice', 'Smith', 'alice@example.com', '1234567890', '2022-11-01', 1, NULL, 60000.00),
('Bob', 'Jones', 'bob@example.com', '1234567891', '2023-02-01', 2, 1, 72000.00),
('Carol', 'Taylor', 'carol@example.com', '1234567892', '2022-08-10', 2, 1, 75000.00),
('David', 'Brown', 'david@example.com', '1234567893', '2023-03-15', 3, 2, 55000.00),
('Eva', 'Davis', 'eva@example.com', '1234567894', '2021-07-22', 4, 1, 83000.00),
('Frank', 'Wilson', 'frank@example.com', '1234567895', '2023-01-10', 1, 2, 64000.00),
('Grace', 'Lee', 'grace@example.com', '1234567896', '2023-06-20', 3, NULL, 70000.00),
('Henry', 'Clark', 'henry@example.com', '1234567897', '2021-10-05', 2, 3, 67000.00),
('Ivy', 'Lopez', 'ivy@example.com', '1234567898', '2022-03-11', 1, 1, 58000.00),
('Jack', 'Hall', 'jack@example.com', '1234567899', '2023-05-01', 4, 5, 62000.00),
('Karen', 'Young', 'karen@example.com', '1234567800', '2023-07-12', 3, 6, 51000.00),
('Leo', 'Allen', 'leo@example.com', '1234567801', '2021-11-23', 2, 3, 90000.00),
('Mia', 'Scott', 'mia@example.com', '1234567802', '2023-08-09', 1, 4, 58000.00),
('Nina', 'Adams', 'nina@example.com', '1234567803', '2023-02-14', 3, NULL, 87000.00),
('Owen', 'Baker', 'owen@example.com', '1234567804', '2022-12-25', 2, 2, 79000.00),
('Pam', 'Carter', 'pam@example.com', '1234567805', '2021-04-19', 1, 5, 46000.00),
('Quinn', 'Evans', 'quinn@example.com', '1234567806', '2022-06-10', 4, 5, 73000.00),
('Ray', 'Foster', 'ray@example.com', '1234567807', '2022-09-01', 3, 1, 81000.00),
('Sara', 'Gomez', 'sara@example.com', '1234567808', '2023-01-30', 4, 3, 94000.00),
('Tom', 'Hughes', 'tom@example.com', '1234567809', '2023-10-02', 1, NULL, 99000.00);


-- INSERT INTO PerformanceReviews
INSERT INTO Performance_Reviews 
(Employee_ID, Review_Date, Performance_Score, Comments) VALUES
(1, '2023-05-01', 'Good', 'Consistent work'),
(2, '2023-05-15', 'Excellent', 'Great leadership'),
(3, '2023-06-10', 'Average', 'Can improve'),
(4, '2023-07-20', 'Good', 'Reliable'),
(5, '2023-05-05', 'Excellent', 'Outstanding'),
(6, '2023-03-18', 'Poor', 'Needs improvement'),
(7, '2023-08-01', 'Average', 'Okay performance'),
(8, '2023-09-10', 'Excellent', 'Great team player'),
(9, '2023-10-10', 'Good', 'Solid performer'),
(10, '2023-07-09', 'Excellent', 'Dependable'),
(11, '2023-06-01', 'Good', 'Steady'),
(12, '2023-02-02', 'Poor', 'Late tasks'),
(13, '2023-03-03', 'Good', 'Responsible'),
(14, '2023-04-14', 'Excellent', 'Exceeds expectations'),
(15, '2023-05-21', 'Average', 'Meets expectations'),
(16, '2023-06-06', 'Good', 'No issues'),
(17, '2023-07-27', 'Poor', 'Under review'),
(18, '2023-01-16', 'Excellent', 'Outstanding initiative'),
(19, '2023-09-14', 'Good', 'Consistent quality'),
(20, '2023-10-03', 'Excellent', 'Very efficient');


-- INSERT INTO Payroll 
INSERT INTO Payroll (Employee_ID, Payment_Date, Amount, Payment_Method) VALUES
(1, '2023-10-01', 5000, 'Bank Transfer'),
(2, '2023-10-01', 6000, 'Check'),
(3, '2023-10-01', 6100, 'Bank Transfer'),
(4, '2023-10-01', 4700, 'Bank Transfer'),
(5, '2023-10-01', 6900, 'Check'),
(6, '2023-10-01', 5200, 'Bank Transfer'),
(7, '2023-10-01', 5800, 'Bank Transfer'),
(8, '2023-10-01', 5400, 'Check'),
(9, '2023-10-01', 4800, 'Bank Transfer'),
(10, '2023-10-01', 5600, 'Check'),
(11, '2023-10-01', 4900, 'Bank Transfer'),
(12, '2023-10-01', 7500, 'Bank Transfer'),
(13, '2023-10-01', 5700, 'Bank Transfer'),
(14, '2023-10-01', 5300, 'Check'),
(15, '2023-10-01', 6000, 'Check'),
(16, '2023-10-01', 6800, 'Bank Transfer'),
(17, '2023-10-01', 7200, 'Bank Transfer'),
(18, '2023-10-01', 7600, 'Check'),
(19, '2023-10-01', 8200, 'Bank Transfer'),
(20, '2023-10-01', 8400, 'Bank Transfer');



-- Question 1. Retrieve the names and contact details of employees hired after January 1, 2023. 
Select First_Name, Last_Name, Phone, Email from employees where Hire_Date > '2023-01-01';

-- Question 2. Find the total payroll amount paid to each department. 
Select d.Department_Name, sum(p.Amount) as Total_Payroll
from payroll p
join employees e on p.Employee_ID =  e.Employee_ID
join departments d on e.Department_ID = d.Department_ID
group by d.Department_Name

-- Question 3. List all employees who have not been assigned a manager. 
Select First_Name, Last_Name
from Employees 
where Manager_ID is Null;


-- Question 4. Retrieve the highest salary in each department along with the employee’s name. 
select e.First_Name, e.Last_Name, MaxSalary, d.Department_Name
from employees e
Join departments d on e.Department_ID = d.Department_ID
join(
SELECT Department_ID, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department_ID) as cte1 
 on e.Department_ID = cte1.Department_ID;


-- Question5). Find the most recent performance review for each employee.
Select e.First_Name, e.Last_Name, 
pr.Review_date, pr.performance_Score, Comments
from performance_reviews pr
join employees e on pr.Employee_ID = e.Employee_ID
where pr.Review_Date =(
select MAX(pr2.Review_date) from performance_reviews pr2
Where pr2.Employee_ID = pr.Employee_ID);

-- Question6).Count the number of employees in each department.
Select d.Department_Name, COUNT(e.Employee_ID) as No_of_Emp_in_each_dep
from Employees e 
join Departments d on e.Department_ID = d.Department_ID
group by d.Department_Name;


-- Question7).List all employees who have received a performance score of "Excellent."
SELECT e.First_Name, e.Last_Name,pr.Performance_Score
FROM Employees e 
JOIN Performance_Reviews pr ON e.Employee_ID = pr.Employee_ID 
WHERE pr.Performance_Score = 'Excellent'; 




-- Question8).Identify the most frequently used payment method in payroll. 
Select Payment_Method, count(*) as Freq_pay_method
from payroll
group by Payment_Method
order by Freq_pay_method desc
limit 1;

-- Question9). Retrieve the top 5 highest-paid employees along with their departments. 
Select e.First_Name, e.Last_Name, e.Salary, d.Department_Name, e.Department_ID
From employees e
join departments d on e.Department_ID = d.Department_ID
order by e.salary desc
limit 5;

-- Question10). Show details of all employees who report directly to a specific manager (e.g., ManagerID = 101).  
Select Employee_ID, First_Name, Last_Name, Email, Phone
from Employees
where Manager_ID = 1
