CREATE TABLE Titles (
    title_id varchar(20)  PRIMARY KEY NOT NULL,
    title varchar(100)   NOT NULL
);

CREATE TABLE Employees (
    emp_no int  PRIMARY KEY NOT NULL,
    emp_title_id varchar(20)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(100)   NOT NULL,
    last_name varchar(100)   NOT NULL,
    sex varchar(5)   NOT NULL,
    hire_date date   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
    salary int   NOT NULL,
    FOREIGN KEY (emp_no int) REFERENCES Employees(emp_no int),
);

CREATE TABLE Departments (
    dept_no varchar(20) PRIMARY KEY NOT NULL,
    dept_name varchar(100)   NOT NULL
);


CREATE TABLE Dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(20)   NOT NULL,
    CONSTRAINT emp_dept PRIMARY KEY (
        emp_no,dept_no
     ),
	FOREIGN KEY (emp_no) REFERENCES Salaries(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);


CREATE TABLE Dept_manager (
    dept_no varchar(20) NOT NULL,
    emp_no int  PRIMARY KEY NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);








