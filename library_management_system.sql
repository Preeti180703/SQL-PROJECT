create database library;
show databases;
use library;
create table books 
(book_id int primary key,title varchar(100),author varchar(50),publisher varchar(50),available_copies int);

create table members
(member_id int primary key,name varchar(50),contact varchar(20),email varchar(50));

create table issued_books
(issue_id int primary key,member_id int,book_id int,issue_date date,return_date date ,
 foreign key(member_id)
 references members(member_id),
foreign key (book_id) 
references books(book_id));

insert into books(book_id,title,author,publisher,available_copies) values
(1, 'Python Basics', 'John Smith', 'TechPress', 5),
(2, 'Data Science 101', 'Mary Allen', 'EduBooks', 3),
(3, 'Database Design', 'David Brown', 'InfoWorld', 4),
(4, 'Machine Learning Made Easy', 'S. Gupta', 'AI Books', 6),
(5, 'Deep Learning Concepts', 'Andrew Lee', 'NeuralPress', 2),
(6, 'Statistics for Beginners', 'Linda Green', 'LearnMore', 7),
(7, 'Advanced SQL Queries', 'Robert Clark', 'DataPub', 5),
(8, 'Big Data Fundamentals', 'Hannah Kim', 'TechPress', 3),
(9, 'Web Development with Django', 'Ankit Sharma', 'CodeHouse', 4),
(10, 'HTML & CSS Mastery', 'Rachel White', 'DesignLab', 8),
(11, 'JavaScript in Action', 'Tom Allen', 'WebWorks', 6),
(12, 'Full Stack Developer Guide', 'Kiran Patel', 'SkillUp', 5),
(13, 'C Programming Basics', 'Dennis Ritchie', 'CompBooks', 10),
(14, 'C++ Essentials', 'Bjarne Stroustrup', 'TechWorld', 6),
(15, 'Java for Everyone', 'James Gosling', 'SunBooks', 9),
(16, 'Kotlin Android Development', 'Arun Nair', 'AppHouse', 4),
(17, 'Flutter for Beginners', 'Priya Verma', 'MobileTech', 5),
(18, 'Data Visualization with Python', 'Mark Wood', 'PlotPress', 3),
(19, 'Artificial Intelligence Simplified', 'Ravi Iyer', 'AI Hub', 4),
(20, 'Ethical Hacking Guide', 'Neha Singh', 'CyberPress', 7),
(21, 'Computer Networks', 'Andrew Tanenbaum', 'Pearson', 5),
(22, 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', 6),
(23, 'Cloud Computing Basics', 'Rajesh Mehta', 'SkyTech', 4),
(24, 'Internet of Things', 'Sonal Kapoor', 'SmartTech', 3),
(25, 'Blockchain Explained', 'Amit Sinha', 'CryptoPub', 4),
(26, 'Cyber Security Fundamentals', 'Shreya Das', 'SafeNet', 5),
(27, 'Data Mining Techniques', 'Vikram Rao', 'InfoPress', 3),
(28, 'Linux Command Line', 'Richard Stallman', 'OpenSource', 6),
(29, 'Shell Scripting Handbook', 'Paul Martin', 'CodeCraft', 4),
(30, 'Git and GitHub Essentials', 'Sofia Reyes', 'VersionPro', 8);


insert into members (member_id, name, contact, email) values
(101, 'Preeti Yadav', '9876543210', 'preeti.yadav@gmail.com'),
(102, 'Ravi Kumar', '9123456780', 'ravi.kumar@gmail.com'),
(103, 'Anjali Sharma', '9988776655', 'anjali.sharma@gmail.com'),
(104, 'Suresh Singh', '9012345678', 'suresh.singh@gmail.com'),
(105, 'Neha Gupta', '9871234560', 'neha.gupta@gmail.com'),
(106, 'Vikram Rao', '9120987654', 'vikram.rao@gmail.com'),
(107, 'Amit Sinha', '9998887776', 'amit.sinha@gmail.com'),
(108, 'Priya Verma', '9112233445', 'priya.verma@gmail.com'),
(109, 'Rakesh Kumar', '9887766554', 'rakesh.kumar@gmail.com'),
(110, 'Shreya Das', '9900112233', 'shreya.das@gmail.com'),
(111, 'Ankit Patel', '9876543211', 'ankit.patel@gmail.com'),
(112, 'Sonia Kapoor', '9123456781', 'sonia.kapoor@gmail.com'),
(113, 'Harish Mehta', '9988776656', 'harish.mehta@gmail.com'),
(114, 'Kiran Nair', '9012345679', 'kiran.nair@gmail.com'),
(115, 'Rohit Sharma', '9871234561', 'rohit.sharma@gmail.com'),
(116, 'Meena Iyer', '9120987655', 'meena.iyer@gmail.com'),
(117, 'Vishal Jain', '9998887777', 'vishal.jain@gmail.com'),
(118, 'Anita Rao', '9112233446', 'anita.rao@gmail.com'),
(119, 'Sanjay Kumar', '9887766555', 'sanjay.kumar@gmail.com'),
(120, 'Pooja Singh', '9900112234', 'pooja.singh@gmail.com'),
(121, 'Rajesh Mehta', '9876543212', 'rajesh.mehta@gmail.com'),
(122, 'Ritu Verma', '9123456782', 'ritu.verma@gmail.com'),
(123, 'Aakash Gupta', '9988776657', 'aakash.gupta@gmail.com'),
(124, 'Shivani Sharma', '9012345680', 'shivani.sharma@gmail.com'),
(125, 'Manish Singh', '9871234562', 'manish.singh@gmail.com'),
(126, 'Nidhi Kapoor', '9120987656', 'nidhi.kapoor@gmail.com'),
(127, 'Deepak Rao', '9998887778', 'deepak.rao@gmail.com'),
(128, 'Pallavi Das', '9112233447', 'pallavi.das@gmail.com'),
(129, 'Saurabh Kumar', '9887766556', 'saurabh.kumar@gmail.com'),
(130, 'Anju Sharma', '9900112235', 'anju.sharma@gmail.com');




insert into issued_books(issue_id,member_id,book_id,issue_date,return_date) values
(1, 101, 1, '2025-10-01', '2025-10-10'),
(2, 102, 2, '2025-10-02', '2025-10-12'),
(3, 103, 3, '2025-10-03', '2025-10-13'),
(4, 104, 4, '2025-10-04', '2025-10-14'),
(5, 105, 5, '2025-10-05', '2025-10-15'),
(6, 106, 6, '2025-10-06', '2025-10-16'),
(7, 107, 7, '2025-10-07', '2025-10-17'),
(8, 108, 8, '2025-10-08', '2025-10-18'),
(9, 109, 9, '2025-10-09', '2025-10-19'),
(10, 110, 10, '2025-10-10', '2025-10-20'),
(11, 101, 11, '2025-10-11', '2025-10-21'),
(12, 102, 12, '2025-10-12', '2025-10-22'),
(13, 103, 13, '2025-10-13', '2025-10-23'),
(14, 104, 14, '2025-10-14', '2025-10-24'),
(15, 105, 15, '2025-10-15', '2025-10-25'),
(16, 106, 16, '2025-10-16', '2025-10-26'),
(17, 107, 17, '2025-10-17', '2025-10-27'),
(18, 108, 18, '2025-10-18', '2025-10-28'),
(19, 109, 19, '2025-10-19', '2025-10-29'),
(20, 110, 20, '2025-10-20', '2025-10-30'),
(21, 101, 21, '2025-10-21', '2025-11-01'),
(22, 102, 22, '2025-10-22', '2025-11-02'),
(23, 103, 23, '2025-10-23', '2025-11-03'),
(24, 104, 24, '2025-10-24', '2025-11-04'),
(25, 105, 25, '2025-10-25', '2025-11-05'),
(26, 106, 26, '2025-10-26', '2025-11-06'),
(27, 107, 27, '2025-10-27', '2025-11-07'),
(28, 108, 28, '2025-10-28', '2025-11-08'),
(29, 109, 29, '2025-10-29', '2025-11-09'),
(30,110,30,'2025-10-30','2025-11-10');

# Quetions:
# 1] List all books.
select * from books;

# 2] List all members.
select * from members;

# 3] List all issued books.
select * from issued_books;

# 4] List books with available copies greater than 3.
select title,author,available_copies
from books
where available_copies>3;

# 5] show all books published by "TechPress".
select * from books 
where publisher="TechPress";

# 6] show all members whose name start with "A".
select * from members 
where name like "A%";

# 7] Find all books issued by member_id=101.
select b.book_id,b.title,b.publisher,b.author
from books as b
join issued_books as i
using(book_id)
where member_id=101;

# 8] List member who have issued more than 1 book.
select member_id, count(book_id) as total_books_issued
from issued_books
group by member_id
having count(book_id) > 1;

# 9] show which books have been issued along with the member name.
select b.book_id, b.title, b.author, b.publisher,
       m.member_id, m.name,
       i.issue_date, i.return_date
from issued_books as i
join books as b 
on i.book_id = b.book_id
join members as m 
on i.member_id = m.member_id;

# 10] show all books that have never been issued.

select b.book_id, b.title, b.author, b.publisher, b.available_copies
from books b
left join issued_books i on b.book_id = i.book_id
where i.book_id is null;

# 11] Find the books with available copiea less than 5.
select title,author,available_copies
from books
where available_copies<5;

# 12] show issued boooks that are not yet returned (return_date is nulll).
select title,author,available_copies
from books
join issued_books
using(book_id)
where return_date is null;

# 13] count the number of books issued per member.

select member_id, count(book_id) AS total_books_issued
from issued_books
group by  member_id;

# 14] count number of books issued per book.

select book_id, count(member_id) AS total_issued
from issued_books
group by book_id;

# 15] Find average available copies per publisher.

select publisher, avg(available_copies) AS avg_available_copies
from books
group by publisher;

# 16] show books that where returned in october.
SELECT *
FROM issued_books
WHERE return_date LIKE '%-10-%';

#17] maximum copies available copies per publisher.

select publisher, max(available_copies) AS max_available_copies
from books
group by publisher;

# 18] count book issued each month.
select month(issue_date) as issue_month, 
    count(*) as total_issued
from issued_books
group by month(issue_date)
order by month(issue_date);

# 19] List members who issued books published by "TechPress".

select distinct member_id
from issued_books
where book_id in (
    select book_id
    from books
    where publisher = 'TechPress');
    
    # 20] Find books whose available copies are less than the average available copies.
    
    select *
from books
where available_copies < (
    select avg(available_copies)
    from books);
   # 21] show the name , title,issue date,return date . 
select m.name,b.title,i.issue_date,i.return_date
from issued_books as i
join members as m
on i.member_id=m.member_id
join books as b
on i.book_id=b.book_id;

# 22] update books avalable_copies is 1 where book_id is 1.
update books 
set available_copies=1 
where book_id=1;

select * from books;

# 23] update the data add 1 and available copies where book_id is 1.
update books 
set available_copies=available_copies+1 
where book_id=1;

select * from books;


