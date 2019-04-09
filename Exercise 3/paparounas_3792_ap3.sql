CREATE DATABASE Erg_3_3792;
USE Erg_3_3792;

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
   dept_no      CHAR(4)         NOT NULL,
   emp_no       INT             NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   PRIMARY KEY (emp_no,dept_no),
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE
); 

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE
);

CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    PRIMARY KEY (emp_no,title, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE    
); 

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
	PRIMARY KEY (emp_no, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE    
); 

INSERT INTO `departments` VALUES 
('d001','Marketing'),
('d002','Finance'),
('d003','Human Resources'),
('d004','Production'),
('d005','Development');

INSERT INTO `employees` VALUES 
(10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),
(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),
(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),
(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),
(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),
(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),
(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),
(10013,'1963-06-07','Eberhardt','Terkki','M','1985-10-20'),
(10014,'1956-02-12','Berni','Genin','M','1987-03-11'),
(10015,'1959-08-19','Guoxiang','Nooteboom','M','1987-07-02'),
(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27'),
(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03'),
(10018,'1954-06-19','Kazuhide','Peha','F','1987-04-03'),
(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30'),
(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26'),
(10021,'1956-12-24','Kostas','Tsiknas','M','1991-01-26'),
(10022,'1960-12-24','John','Tsimperidis','M','1995-01-26');

INSERT INTO `dept_emp` VALUES 
(10001,'d001','1986-06-26','9999-01-01'),
(10002,'d002','1996-08-03','9999-01-01'),
(10002,'d003','1996-08-03','9999-01-01'),
(10003,'d003','1995-12-03','9999-01-01'),
(10004,'d004','1986-12-01','9999-01-01'),
(10004,'d001','1986-12-01','9999-01-01'),
(10005,'d005','1989-09-12','9999-01-01'),
(10006,'d001','1990-08-05','9999-01-01'),
(10007,'d002','1989-02-10','9999-01-01'),
(10008,'d003','1998-03-11','2000-07-31'),
(10009,'d004','1985-02-18','9999-01-01'),
(10010,'d005','1996-11-24','2000-06-26'),
(10010,'d001','2000-06-26','9999-01-01'),
(10011,'d002','1990-01-22','1996-11-09'),
(10012,'d003','1992-12-18','9999-01-01'),
(10013,'d004','1985-10-20','9999-01-01'),
(10014,'d005','1993-12-29','9999-01-01'),
(10015,'d001','1992-09-19','1993-08-22'),
(10016,'d002','1998-02-11','9999-01-01'),
(10017,'d003','1993-08-03','9999-01-01'),
(10018,'d004','1992-07-29','9999-01-01'),
(10019,'d005','1999-04-30','9999-01-01'),
(10019,'d004','1999-04-30','9999-01-01'),
(10020,'d001','1997-12-30','9999-01-01'),
(10021,'d005','1995-12-30','9999-01-01'),

(10022,'d005','1995-12-30','9999-01-01');

INSERT INTO `dept_manager` VALUES 
('d001',10001,'1988-01-01','1991-10-01'),
('d002',10005,'1991-10-01','9999-01-01'),
('d003',10007,'1987-01-01','1989-12-17'),
('d004',10010,'1989-12-17','9999-01-01'),
('d005',10017,'1990-01-01','1992-03-21');


INSERT INTO `salaries` VALUES 
(10001,60117,'1986-06-26','1987-06-26'),
(10001,62102,'1987-06-26','1988-06-25'),
(10001,66074,'1988-06-25','1989-06-25'),
(10001,66596,'1989-06-25','1990-06-25'),
(10001,66961,'1990-06-25','1991-06-25'),
(10001,71046,'1991-06-25','1992-06-24'),
(10001,74333,'1992-06-24','1993-06-24'),
(10001,75286,'1993-06-24','1994-06-24'),
(10001,75994,'1994-06-24','1995-06-24'),
(10001,76884,'1995-06-24','1996-06-23'),
(10001,80013,'1996-06-23','1997-06-23'),
(10001,81025,'1997-06-23','1998-06-23'),
(10001,81097,'1998-06-23','1999-06-23'),
(10001,84917,'1999-06-23','2000-06-22'),
(10001,85112,'2000-06-22','2001-06-22'),
(10001,85097,'2001-06-22','2002-06-22'),
(10001,88958,'2002-06-22','9999-01-01'),
(10002,65828,'1996-08-03','1997-08-03'),
(10002,65909,'1997-08-03','1998-08-03'),
(10002,67534,'1998-08-03','1999-08-03'),
(10002,69366,'1999-08-03','2000-08-02'),
(10002,71963,'2000-08-02','2001-08-02'),
(10002,72527,'2001-08-02','9999-01-01'),
(10003,40006,'1995-12-03','1996-12-02'),
(10003,43616,'1996-12-02','1997-12-02'),
(10003,43466,'1997-12-02','1998-12-02'),
(10003,43636,'1998-12-02','1999-12-02'),
(10003,43478,'1999-12-02','2000-12-01'),
(10003,43699,'2000-12-01','2001-12-01'),
(10003,43311,'2001-12-01','9999-01-01'),
(10004,40054,'1986-12-01','1987-12-01'),
(10004,42283,'1987-12-01','1988-11-30'),
(10004,42542,'1988-11-30','1989-11-30'),
(10004,46065,'1989-11-30','1990-11-30'),
(10004,48271,'1990-11-30','1991-11-30'),
(10004,50594,'1991-11-30','1992-11-29'),
(10004,52119,'1992-11-29','1993-11-29'),
(10004,54693,'1993-11-29','1994-11-29'),
(10004,58326,'1994-11-29','1995-11-29'),
(10004,60770,'1995-11-29','1996-11-28'),
(10004,62566,'1996-11-28','1997-11-28'),
(10004,64340,'1997-11-28','1998-11-28'),
(10004,67096,'1998-11-28','1999-11-28'),
(10004,69722,'1999-11-28','2000-11-27'),
(10004,70698,'2000-11-27','2001-11-27'),
(10004,74057,'2001-11-27','9999-01-01'),
(10005,78228,'1989-09-12','1990-09-12'),
(10005,82621,'1990-09-12','1991-09-12'),
(10005,83735,'1991-09-12','1992-09-11'),
(10005,85572,'1992-09-11','1993-09-11'),
(10005,85076,'1993-09-11','1994-09-11'),
(10005,86050,'1994-09-11','1995-09-11'),
(10005,88448,'1995-09-11','1996-09-10'),
(10005,88063,'1996-09-10','1997-09-10'),
(10005,89724,'1997-09-10','1998-09-10'),
(10005,90392,'1998-09-10','1999-09-10'),
(10005,90531,'1999-09-10','2000-09-09'),
(10005,91453,'2000-09-09','2001-09-09'),
(10005,94692,'2001-09-09','9999-01-01'),
(10006,40000,'1990-08-05','1991-08-05'),
(10006,42085,'1991-08-05','1992-08-04'),
(10006,42629,'1992-08-04','1993-08-04'),
(10006,45844,'1993-08-04','1994-08-04'),
(10006,47518,'1994-08-04','1995-08-04'),
(10006,47917,'1995-08-04','1996-08-03'),
(10006,52255,'1996-08-03','1997-08-03'),
(10006,53747,'1997-08-03','1998-08-03'),
(10006,56032,'1998-08-03','1999-08-03'),
(10006,58299,'1999-08-03','2000-08-02'),
(10006,60098,'2000-08-02','2001-08-02'),
(10006,59755,'2001-08-02','9999-01-01'),
(10007,56724,'1989-02-10','1990-02-10'),
(10007,60740,'1990-02-10','1991-02-10'),
(10007,62745,'1991-02-10','1992-02-10'),
(10007,63475,'1992-02-10','1993-02-09'),
(10007,63208,'1993-02-09','1994-02-09'),
(10007,64563,'1994-02-09','1995-02-09'),
(10007,68833,'1995-02-09','1996-02-09'),
(10007,70220,'1996-02-09','1997-02-08'),
(10007,73362,'1997-02-08','1998-02-08'),
(10007,75582,'1998-02-08','1999-02-08'),
(10007,79513,'1999-02-08','2000-02-08'),
(10007,80083,'2000-02-08','2001-02-07'),
(10007,84456,'2001-02-07','2002-02-07'),
(10007,88070,'2002-02-07','9999-01-01'),
(10008,46671,'1998-03-11','1999-03-11'),
(10008,48584,'1999-03-11','2000-03-10'),
(10008,52668,'2000-03-10','2000-07-31'),
(10009,60929,'1985-02-18','1986-02-18'),
(10009,64604,'1986-02-18','1987-02-18'),
(10009,64780,'1987-02-18','1988-02-18'),
(10009,66302,'1988-02-18','1989-02-17'),
(10009,69042,'1989-02-17','1990-02-17'),
(10009,70889,'1990-02-17','1991-02-17'),
(10009,71434,'1991-02-17','1992-02-17'),
(10009,74612,'1992-02-17','1993-02-16'),
(10009,76518,'1993-02-16','1994-02-16'),
(10009,78335,'1994-02-16','1995-02-16'),
(10009,80944,'1995-02-16','1996-02-16'),
(10009,82507,'1996-02-16','1997-02-15'),
(10009,85875,'1997-02-15','1998-02-15'),
(10009,89324,'1998-02-15','1999-02-15'),
(10009,90668,'1999-02-15','2000-02-15'),
(10009,93507,'2000-02-15','2001-02-14'),
(10009,94443,'2001-02-14','2002-02-14'),
(10009,94409,'2002-02-14','9999-01-01'),
(10010,72488,'1996-11-24','1997-11-24'),
(10010,74347,'1997-11-24','1998-11-24'),
(10010,75405,'1998-11-24','1999-11-24'),
(10010,78194,'1999-11-24','2000-11-23'),
(10010,79580,'2000-11-23','2001-11-23'),
(10010,80324,'2001-11-23','9999-01-01'),
(10011,42365,'1990-01-22','1991-01-22'),
(10011,44200,'1991-01-22','1992-01-22'),
(10011,48214,'1992-01-22','1993-01-21'),
(10011,50927,'1993-01-21','1994-01-21'),
(10011,51470,'1994-01-21','1995-01-21'),
(10011,54545,'1995-01-21','1996-01-21'),
(10011,56753,'1996-01-21','1996-11-09'),
(10012,40000,'1992-12-18','1993-12-18'),
(10012,41867,'1993-12-18','1994-12-18'),
(10012,42318,'1994-12-18','1995-12-18'),
(10012,44195,'1995-12-18','1996-12-17'),
(10012,46460,'1996-12-17','1997-12-17'),
(10012,46485,'1997-12-17','1998-12-17'),
(10012,47364,'1998-12-17','1999-12-17'),
(10012,51122,'1999-12-17','2000-12-16'),
(10012,54794,'2000-12-16','2001-12-16'),
(10012,54423,'2001-12-16','9999-01-01'),
(10013,40000,'1985-10-20','1986-10-20'),
(10013,40623,'1986-10-20','1987-10-20'),
(10013,40561,'1987-10-20','1988-10-19'),
(10013,40306,'1988-10-19','1989-10-19'),
(10013,43569,'1989-10-19','1990-10-19'),
(10013,46305,'1990-10-19','1991-10-19'),
(10013,47118,'1991-10-19','1992-10-18'),
(10013,50351,'1992-10-18','1993-10-18'),
(10013,49887,'1993-10-18','1994-10-18'),
(10013,53957,'1994-10-18','1995-10-18'),
(10013,57590,'1995-10-18','1996-10-17'),
(10013,59228,'1996-10-17','1997-10-17'),
(10013,59571,'1997-10-17','1998-10-17'),
(10013,63274,'1998-10-17','1999-10-17'),
(10013,63352,'1999-10-17','2000-10-16'),
(10013,66744,'2000-10-16','2001-10-16'),
(10013,68901,'2001-10-16','9999-01-01'),
(10014,46168,'1993-12-29','1994-12-29'),
(10014,48242,'1994-12-29','1995-12-29'),
(10014,47921,'1995-12-29','1996-12-28'),
(10014,50715,'1996-12-28','1997-12-28'),
(10014,53228,'1997-12-28','1998-12-28'),
(10014,53962,'1998-12-28','1999-12-28'),
(10014,56937,'1999-12-28','2000-12-27'),
(10014,59142,'2000-12-27','2001-12-27'),
(10014,60598,'2001-12-27','9999-01-01'),
(10015,40000,'1992-09-19','1993-08-22'),
(10016,70889,'1998-02-11','1999-02-11'),
(10016,72946,'1999-02-11','2000-02-11'),
(10016,76826,'2000-02-11','2001-02-10'),
(10016,76381,'2001-02-10','2002-02-10'),
(10016,77935,'2002-02-10','9999-01-01'),
(10017,71380,'1993-08-03','1994-08-03'),
(10017,75538,'1994-08-03','1995-08-03'),
(10017,79510,'1995-08-03','1996-08-02'),
(10017,82163,'1996-08-02','1997-08-02'),
(10017,86157,'1997-08-02','1998-08-02'),
(10017,89619,'1998-08-02','1999-08-02'),
(10017,91985,'1999-08-02','2000-08-01'),
(10017,96122,'2000-08-01','2001-08-01'),
(10017,98522,'2001-08-01','2002-08-01'),
(10017,99651,'2002-08-01','9999-01-01'),
(10018,55881,'1987-04-03','1988-04-02'),
(10018,59206,'1988-04-02','1989-04-02'),
(10018,61361,'1989-04-02','1990-04-02'),
(10018,61648,'1990-04-02','1991-04-02'),
(10018,61217,'1991-04-02','1992-04-01'),
(10018,61244,'1992-04-01','1993-04-01'),
(10018,63286,'1993-04-01','1994-04-01'),
(10018,65739,'1994-04-01','1995-04-01'),
(10018,67519,'1995-04-01','1996-03-31'),
(10018,69276,'1996-03-31','1997-03-31'),
(10018,72585,'1997-03-31','1998-03-31'),
(10018,72804,'1998-03-31','1999-03-31'),
(10018,76957,'1999-03-31','2000-03-30'),
(10018,80305,'2000-03-30','2001-03-30'),
(10018,84541,'2001-03-30','2002-03-30'),
(10018,84672,'2002-03-30','9999-01-01'),
(10019,44276,'1999-04-30','2000-04-29'),
(10019,46946,'2000-04-29','2001-04-29'),
(10019,46775,'2001-04-29','2002-04-29'),
(10019,50032,'2002-04-29','9999-01-01'),
(10020,40000,'1997-12-30','1998-12-30'),
(10020,40647,'1998-12-30','1999-12-30'),
(10020,43800,'1999-12-30','2000-12-29'),
(10020,44927,'2000-12-29','2001-12-29'),
(10020,47017,'2001-12-29','9999-01-01');

INSERT INTO `titles` VALUES 
(10001,'Senior Engineer','1986-06-26','9999-01-01'),
(10002,'Staff','1996-08-03','9999-01-01'),
(10003,'Senior Engineer','1995-12-03','9999-01-01'),
(10004,'Engineer','1986-12-01','1995-12-01'),
(10004,'Senior Engineer','1995-12-01','9999-01-01'),
(10005,'Senior Staff','1996-09-12','9999-01-01'),
(10005,'Staff','1989-09-12','1996-09-12'),
(10006,'Senior Engineer','1990-08-05','9999-01-01'),
(10007,'Senior Staff','1996-02-11','9999-01-01'),
(10007,'Staff','1989-02-10','1996-02-11'),
(10008,'Assistant Engineer','1998-03-11','2000-07-31'),
(10009,'Assistant Engineer','1985-02-18','1990-02-18'),
(10009,'Engineer','1990-02-18','1995-02-18'),
(10009,'Senior Engineer','1995-02-18','9999-01-01'),
(10010,'Engineer','1996-11-24','9999-01-01'),
(10011,'Staff','1990-01-22','1996-11-09'),
(10012,'Engineer','1992-12-18','2000-12-18'),
(10012,'Senior Engineer','2000-12-18','9999-01-01'),
(10013,'Senior Staff','1985-10-20','9999-01-01'),
(10014,'Engineer','1993-12-29','9999-01-01'),
(10015,'Senior Staff','1992-09-19','1993-08-22'),
(10016,'Staff','1998-02-11','9999-01-01'),
(10017,'Senior Staff','2000-08-03','9999-01-01'),
(10017,'Staff','1993-08-03','2000-08-03'),
(10018,'Engineer','1987-04-03','1995-04-03'),
(10018,'Senior Engineer','1995-04-03','9999-01-01'),
(10019,'Staff','1999-04-30','9999-01-01'),
(10020,'Engineer','1997-12-30','9999-01-01');

-- Erot 1A:
select first_name as 'Onoma',last_name as 'Eponimo' from employees
       where first_name like 'Ka%';
       
-- Erot 1B:
select first_name as 'Onoma',last_name as 'Eponimo' from employees
       where first_name like '%ra%';
       
-- Erot 1C:
select first_name as 'Onoma',last_name as 'Eponimo' from employees
       where first_name like "_____";
       
-- Erot 2:
select salary as '10 Kaliteroi Misthoi' from salaries
       order by salary desc limit 10;
       
-- Erot 3:
select min(salary) as 'Mikroteros_Misthos', max(salary) as 'Megaliteros Misthos', ceil(avg(salary)) as 'Mesos Misthos' from salaries;

-- Erot 4:
select first_name as 'Onoma',last_name as 'Eponimo',salary as 'Misthos'from employees,salaries 
	   where employees.emp_no=salaries.emp_no order by salary desc;

-- Erot 5:
select first_name as 'Onoma',last_name as 'Eponimo',ceil(avg(salary)) as 'Mesos Misthos' from employees,salaries 
	   where employees.emp_no=salaries.emp_no 
       group by employees.emp_no order by last_name asc;
	   
-- Erot 6:
select first_name as 'Onoma',last_name as 'Eponimo',ceil(avg(salary)) as 'Mesos Misthos' from employees,salaries 
	   where employees.emp_no=salaries.emp_no 
       group by employees.emp_no having avg(salary)>50000;

-- Erot 7:
select first_name as 'Onoma',last_name as 'Eponimo' from 
		employees as e,dept_manager as dm where e.emp_no=dm.emp_no;

-- Erot 8:
select e.emp_no,dm.emp_no from 
		employees as e left join dept_manager as dm 
		on e.emp_no=dm.emp_no limit 10;

-- Erot 9:
select first_name,last_name,e.emp_no,s.emp_no from 
		employees as e left join salaries as s 
		on e.emp_no=s.emp_no where s.emp_no is null;

-- Erot 10:
select dept_name,count(*) from 
		departments as d join dept_emp as de 
		on d.dept_no=de.dept_no group by de.dept_no;

-- Erot 11:
create view Dept_Sal as ( select de.emp_no,de.dept_no,sal.salary 
							from dept_emp as de, salaries as sal 
							where de.emp_no=sal.emp_no );
select * from Dept_Sal;                       
select min(salary) as 'Mikroteros_Misthos', max(salary) as 'Megistos_Misthos', ceil(avg(salary)) as 'Mesos_Misthos' from Dept_Sal group by dept_no;

-- Erot 12:
create view Dept_Sal2 as ( select de.emp_no,de.dept_no,sal.salary 
							from dept_emp as de, salaries as sal 
							where de.emp_no=sal.emp_no and de.dept_no="d001");

select * from Dept_Sal2;

select emp_no as 'Ypallilos', salary as 'Misthos' from salaries where salary>(select max(salary) from Dept_Sal2)  group by emp_no;