CREATE TABLE programmer (
    programmer_id int primary key,
    name1 varchar(200),
    AGE int,
    gender VARCHAR(10),
    DOB DATE,
    DOJ DATE,
    languages_known varchar(500)
);


CREATE TABLE software (
    software_id int primary key,
    programmer_id int,
    software_name varchar(200),
    development_lang varchar(200),
    development_cost decimal(20, 2),
    selling_prize decimal(20, 2),
    foreign key (programmer_id) references programmer(programmer_id)
);


CREATE table studies (
    study_id INT PRIMARY KEY,
    programmer_id int,
    name_of_course VARCHAR(200),
    lang_name VARCHAR(200),
    foreign key (programmer_id) references programmer(programmer_id)
);


Inserting the values -------------------------------

INSERT INTO PROGRAMMER (PROGRAMMER_ID, name1, AGE, GENDER, DOB, DOJ, LANGUAGES_KNOWN)
VALUES
    (01, 'John', 21, 'Male', '1995-03-11', '2018-07-10', 'Java, Python, SQL'),
    (02, 'Jane', 22, 'Female', '1999-08-12', '2020-01-09', 'C#, C++, JavaScript'),
    (03, 'Mike ', 32, 'Male', '1989-11-13', '2012-05-08', 'PHP, HTML, CSS'),
    (04, 'Brown', 23, 'Female', '1994-06-14', '2016-09-07', 'Python, R, Java'),
    (05, 'David', 24, 'Male', '1997-12-15', '2019-11-06', 'Python, JavaScript');

	INSERT INTO software (software_id, programmer_id, software_name, development_lang, development_cost, selling_prize)
VALUES
    (1, 01, 'JDK', 'Java', 1400.00, 2500.00),
    (2, 02, 'net_beans', 'C#', 1500.00, 3200.00),
    (3, 03, 'net_beans', 'PHP', 1000.00, 2800.00),
    (4, 04, 'pycharm', 'Python', 9000.00, 3300.10),
    (5, 05, 'pycharm', 'Python', 500.00, 2200.00);

	INSERT INTO studies (study_id, programmer_id, name_of_course, lang_name)
VALUES
    (1, 01, 'DAP', 'Python'),
    (2, 02, 'DSA', 'C++'),
    (3, 03, 'Web Development', 'JavaScript'),
    (4, 04, 'ML', 'Python'),
    (5, 05, 'AI', 'Python');

Answers of the questions 1 to 10 -------------------




ALTER TABLE software
ADD profit DECIMAL(20, 2);

UPDATE software
SET profit = selling_prize - development_cost;












ALTER TABLE software
ADD copies_sold INT;


UPDATE software SET copies_sold = 100 WHERE software_id = 1;
UPDATE software SET copies_sold = 120 WHERE software_id = 2;
UPDATE software SET copies_sold = 90 WHERE software_id = 3;
UPDATE software SET copies_sold = 150 WHERE software_id = 4;
UPDATE software SET copies_sold = 80 WHERE software_id = 5;

ALTER TABLE studies
ADD course_fee DECIMAL(10, 2);






UPDATE studies SET course_fee = 9000 WHERE study_id = 1;
UPDATE studies SET course_fee = 12000 WHERE study_id = 2;
UPDATE studies SET course_fee = 7500 WHERE study_id = 3;
UPDATE studies SET course_fee = 4500 WHERE study_id = 4;
UPDATE studies SET course_fee = 10000 WHERE study_id = 5;


ALTER TABLE studies
ADD institute VARCHAR(100);



UPDATE studies SET institute = 'Sabhari' WHERE study_id = 1;
UPDATE studies SET institute = 'Pragathi' WHERE study_id = 2;
UPDATE studies SET institute = 'Sabhari' WHERE study_id = 3;
UPDATE studies SET institute = 'National Institute' WHERE study_id = 4;
UPDATE studies SET institute = 'Pragathi' WHERE study_id = 5;

ALTER TABLE programmer
ADD salary DECIMAL(10, 2);


UPDATE programmer SET salary = 3000 WHERE programmer_id = 1;
UPDATE programmer SET salary = 4500 WHERE programmer_id = 2;
UPDATE programmer SET salary = 2000 WHERE programmer_id = 3;
UPDATE programmer SET salary = 3800 WHERE programmer_id = 4;
UPDATE programmer SET salary = 3200 WHERE programmer_id = 5;


SELECT TOP 1 name1, doj
FROM programmer
ORDER BY doj DESC;












UPDATE software SET development_lang = 'Java' WHERE programmer_id = 01;
UPDATE software SET development_lang = 'Python' WHERE programmer_id = 02;
UPDATE software SET development_lang = 'C++' WHERE programmer_id = 03;

UPDATE software SET profit = development_cost - selling_prize;










1.	SELECT COUNT(*) AS Num_Programmers_Not_Know_Pascal_And_C
FROM PROGRAMMER
WHERE LANGUAGES_KNOWN NOT LIKE '%PASCAL%' AND LANGUAGES_KNOWN NOT LIKE '%C%';



2.	SELECT * FROM PROGRAMMER
WHERE LANGUAGES_KNOWN NOT LIKE '%Clipper%' AND LANGUAGES_KNOWN NOT LIKE '%COBOL%' AND LANGUAGES_KNOWN NOT LIKE '%PASCAL%';


3.	SELECT development_lang AS Language1,
       AVG(development_cost) AS Avg_Development_Cost,
       AVG(selling_prize) AS Avg_Selling_prize,
       AVG(selling_prize / COPIES_SOLD) AS Avg_Price_Per_Copy
FROM SOFTWARE
GROUP BY development_lang;


ALTER TABLE SOFTWARE
ADD development_lang VARCHAR(100);

UPDATE SOFTWARE
SET development_lang = 'Java'
WHERE programmer_id = 01;


UPDATE SOFTWARE
SET development_lang = 'Python'
WHERE programmer_id = 02;

UPDATE SOFTWARE
SET development_lang = 'C++'
WHERE programmer_id = 03;



4.SELECT P.name1 AS Programmer_Name,
       COUNT(S.software_id) AS Num_Packages_Developed
FROM programmer P
LEFT JOIN software S ON P.programmer_id = S.programmer_id
GROUP BY P.name1;


5.	SELECT profit,
       COUNT(DISTINCT programmer_id) AS Num_Programmers,
       COUNT(*) AS Num_Packages
FROM software
GROUP BY profit;









6.	SELECT COUNT(*) AS Num_Packages_Developed
FROM software
WHERE programmer_id = (
    SELECT TOP 1 programmer_id
    FROM programmer
    WHERE institute = 'crist College'
    ORDER BY experience DESC
);

ALTER TABLE PROGRAMMER
ADD NUM_PACKAGES_DEVELOPED INT;

UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 5
WHERE PROGRAMMER_ID = 01;

UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 3
WHERE PROGRAMMER_ID = 02;


UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 8
WHERE PROGRAMMER_ID = 03;

UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 10
WHERE PROGRAMMER_ID = 04;


UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 7
WHERE PROGRAMMER_ID = 05;




ALTER TABLE PROGRAMMER
ADD institute VARCHAR(100),
    experience INT;


ALTER TABLE PROGRAMMER
ADD institute VARCHAR(100),
    experience INT;

UPDATE PROGRAMMER
SET institute = 'BDPS Institute', experience = 5
WHERE PROGRAMMER_ID = 01;

UPDATE PROGRAMMER
SET institute = 'crist College', experience = 3
WHERE PROGRAMMER_ID = 02;

UPDATE PROGRAMMER
SET institute = 'simboysis College', experience = 10
WHERE PROGRAMMER_ID IN (03, 04, 05);

ALTER TABLE PROGRAMMER
ADD NUM_PACKAGES_DEVELOPED INT;

UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 5 WHERE PROGRAMMER_ID = 01;
UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 3 WHERE PROGRAMMER_ID = 02;
UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 8 WHERE PROGRAMMER_ID = 03;
UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 10 WHERE PROGRAMMER_ID = 04;
UPDATE PROGRAMMER
SET NUM_PACKAGES_DEVELOPED = 7 WHERE PROGRAMMER_ID = 05;


ALTER TABLE PROGRAMMER
ADD PACKAGE_ID_1 INT;

UPDATE PROGRAMMER
SET PACKAGE_ID_1 = 110 WHERE PROGRAMMER_ID = 01;
UPDATE PROGRAMMER
SET PACKAGE_ID_1 = 111 WHERE PROGRAMMER_ID = 02;
UPDATE PROGRAMMER
SET PACKAGE_ID_1 = 112 WHERE PROGRAMMER_ID = 03;
UPDATE PROGRAMMER
SET PACKAGE_ID_1 = 113 WHERE PROGRAMMER_ID = 04;
UPDATE PROGRAMMER
SET PACKAGE_ID_1 = 115 WHERE PROGRAMMER_ID = 05;

-- 1. How many Programmers Don’t know PASCAL and C
SELECT COUNT(*) AS Num_Programmers_Not_Know_Pascal_And_C
FROM PROGRAMMER
WHERE LANGUAGES_KNOWN NOT LIKE '%PASCAL%' AND LANGUAGES_KNOWN NOT LIKE '%C%';

-- 2. Details of those who don’t know Clipper, COBOL or PASCAL
SELECT * FROM PROGRAMMER
WHERE LANGUAGES_KNOWN NOT LIKE '%Clipper%' AND LANGUAGES_KNOWN NOT LIKE '%COBOL%' AND LANGUAGES_KNOWN NOT LIKE '%PASCAL%';

-- 3. Language-wise AVG Development Cost, AVG Selling Cost, and AVG Price per Copy
SELECT DEVELOPMENT_LANGUAGE AS Language,
       AVG(DEVELOPMENT_COST) AS Avg_Development_Cost,
       AVG(SELLING_PRIZE) AS Avg_Selling_Price,
       AVG(SELLING_PRIZE / COPIES_SOLD) AS Avg_Price_Per_Copy
FROM SOFTWARE
GROUP BY DEVELOPMENT_LANGUAGE;

-- 4. Programmer names and No. of Packages developed
4.	SELECT P.NAME1 AS Programmer_Name,
       COUNT(S.SOFTWARE_ID) AS Num_Packages_Developed
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PROGRAMMER_ID = S.PROGRAMMER_ID
GROUP BY P.NAME1;



DESCRIBE SOFTWARE;



select * from software


-- 5. Each PROFIT with number of Programmers and Packages
SELECT PROFIT,
       COUNT(DISTINCT PROGRAMMER_ID) AS Num_Programmers,
       COUNT(SOFTWARE_ID) AS Num_Packages
FROM SOFTWARE
GROUP BY PROFIT;


-- 6. Packages developed by most experienced programmer from BDPS
SELECT SUM(NUM_PACKAGES_DEVELOPED) AS Total_Developed
FROM PROGRAMMER
WHERE EXPERIENCE = (SELECT MAX(EXPERIENCE) FROM PROGRAMMER WHERE INSTITUTE = 'BDPS Institute');

-- 7. Packages developed by female programmers earning more than highest paid male
SELECT COUNT(*) AS Num_Packages_Developed
FROM SOFTWARE
WHERE PROGRAMMER_ID IN (
    SELECT PROGRAMMER_ID
    FROM PROGRAMMER
    WHERE GENDER = 'Female' AND SALARY > (
        SELECT MAX(SALARY)
        FROM PROGRAMMER
        WHERE GENDER = 'Male')
);

-- 8. Salary and course of the programmer who developed highest selling package
SELECT P.SALARY, S.DEVELOPMENT_LANGUAGE
FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PROGRAMMER_ID = S.PROGRAMMER_ID
WHERE S.SELLING_PRIZE = (SELECT MAX(SELLING_PRIZE) FROM SOFTWARE);

-- 9. Institute of the programmer who developed the costliest package
SELECT P.INSTITUTE
FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PROGRAMMER_ID = S.PROGRAMMER_ID
WHERE S.DEVELOPMENT_COST = (SELECT MAX(DEVELOPMENT_COST) FROM SOFTWARE);

-- 10. Names of programmers who haven’t developed any packages
10. SELECT P.name1 AS Programmer_Name
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.programmer_id = S.programmer_id
WHERE S.software_id IS NULL;

SELECT P.name1 AS Programmer_Name, S.software_id, S.software_name
FROM PROGRAMMER P
INNER JOIN SOFTWARE S ON P.programmer_id = S.programmer_id;

-- Only if your programmer_id mapping is missing in SOFTWARE
UPDATE SOFTWARE SET programmer_id = 1 WHERE software_id = 1;
UPDATE SOFTWARE SET programmer_id = 2 WHERE software_id = 2;
UPDATE SOFTWARE SET programmer_id = 3 WHERE software_id = 3;
UPDATE SOFTWARE SET programmer_id = 4 WHERE software_id = 4;
UPDATE SOFTWARE SET programmer_id = 5 WHERE software_id = 5;


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'SOFTWARE';


ALTER TABLE PROGRAMMER
ADD package_id int;


UPDATE software
SET package_id_1 = '110'
WHERE software_id = 1;

UPDATE software SET programmer_id = 1 WHERE software_id = 1;
UPDATE software SET programmer_id = 2 WHERE software_id = 2;
UPDATE software SET programmer_id = 3 WHERE software_id = 3;
UPDATE software SET programmer_id = 4 WHERE software_id = 4;
UPDATE software SET programmer_id = 5 WHERE software_id = 5;




-- 11. Software with development language not in PROF1 or PROF2
SELECT *
FROM SOFTWARE
WHERE DEVELOPMENT_LANGUAGE NOT IN (
    SELECT languages_known FROM PROGRAMMER
    UNION
    SELECT languages_known FROM PROGRAMMER
);


SELECT *
FROM PROGRAMMER;



-- 12. Software developed by male (before 1965) and female (after 1975)
SELECT S.*
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PROGRAMMER_ID = P.PROGRAMMER_ID
WHERE (P.GENDER = 'Male' AND P.DOB < '1965-01-01')
   OR (P.GENDER = 'Female' AND P.DOB > '1975-12-31');

-- 13. Packages, Copies Sold, and Sales Value institute-wise
SELECT 
    P.INSTITUTE, 
    COUNT(S.SOFTWARE_ID) AS Num_Packages,
    SUM(S.COPIES_SOLD) AS Total_Copies_Sold,
    SUM(S.COPIES_SOLD * S.SELLING_PRIZE) AS Total_Sales_Value
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PROGRAMMER_ID = P.PROGRAMMER_ID
GROUP BY P.INSTITUTE;


-- 14. Software developed by male programmers earning more than 3000
SELECT P.NAME1, P.LANGUAGES_KNOWN, S.*
FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PROGRAMMER_ID = S.PROGRAMMER_ID
WHERE P.GENDER = 'Male' AND P.SALARY > 3000;

-- 15. Female programmers earning more than highest paid male
SELECT NAME1, SALARY
FROM PROGRAMMER
WHERE GENDER = 'Female'
AND SALARY > (SELECT MAX(SALARY) FROM PROGRAMMER WHERE GENDER = 'Male');

-- 16. Male programmers earning below average female salary
SELECT NAME1, SALARY
FROM PROGRAMMER
WHERE GENDER = 'Male'
AND SALARY < (SELECT AVG(SALARY) FROM PROGRAMMER WHERE GENDER = 'Female');

-- 17. Language used in highest and lowest selling package by each programmer
SELECT P.NAME1, 
       MAX(S.SELLING_PRIZE) AS Highest_Selling_Price,
       MIN(S.SELLING_PRIZE) AS Lowest_Selling_Price,
       P.LANGUAGES_KNOWN
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PROGRAMMER_ID = P.PROGRAMMER_ID
GROUP BY P.NAME1, P.LANGUAGES_KNOWN;

-- 18. Packages sold less than average number of copies
SELECT SOFTWARE_NAME
FROM SOFTWARE
WHERE COPIES_SOLD < (SELECT AVG(COPIES_SOLD) FROM SOFTWARE);


-- 19. Costliest package developed in PASCAL
SELECT *
FROM SOFTWARE
WHERE development_lang = 'PASCAL'
AND development_cost = (SELECT MAX(development_cost) FROM SOFTWARE WHERE development_lang = 'PASCAL');

-- 20. Copies of package with least difference in dev and selling cost
SELECT COPIES_SOLD
FROM SOFTWARE
WHERE ABS(DEVELOPMENT_COST - SELLING_PRIZE) = (
    SELECT MIN(ABS(DEVELOPMENT_COST - SELLING_PRIZE)) FROM SOFTWARE);

-- 21. Language of package with highest sales amount (COPIES_SOLD * SELLING_PRIZE)
SELECT DEVELOPMENT_LANGUAGE
FROM SOFTWARE
WHERE (COPIES_SOLD * SELLING_PRIZE) = (
    SELECT MAX(COPIES_SOLD * SELLING_PRIZE) FROM SOFTWARE);

-- 22. Developer of package with least copies sold
SELECT P.NAME1
FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PROGRAMMER_ID = S.PROGRAMMER_ID
WHERE COPIES_SOLD = (SELECT MIN(COPIES_SOLD) FROM SOFTWARE);

-- 23. Courses within 1000 of average course fee
SELECT NAME_OF_COURSE
FROM STUDIES
WHERE COURSE_FEE BETWEEN 
      (SELECT AVG(COURSE_FEE)-1000 FROM STUDIES)
  AND (SELECT AVG(COURSE_FEE)+1000 FROM STUDIES);

-- 24. Institutes and Courses below average course fee
SELECT P.INSTITUTE, S.NAME_OF_COURSE
FROM PROGRAMMER P
JOIN STUDIES S ON P.PROGRAMMER_ID = S.STUDY_ID
WHERE S.COURSE_FEE < (SELECT AVG(COURSE_FEE) FROM STUDIES);

-- 25. Institute that conducts costliest course
SELECT P.INSTITUTE
FROM PROGRAMMER P
JOIN STUDIES S ON P.PROGRAMMER_ID = S.STUDY_ID
WHERE S.COURSE_FEE = (SELECT MAX(COURSE_FEE) FROM STUDIES);

-- 26. Costliest Course
SELECT NAME_OF_COURSE
FROM STUDIES
WHERE COURSE_FEE = (SELECT MAX(COURSE_FEE) FROM STUDIES);


