  SQL Project: Programmer & Software Management

A comprehensive SQL project that simulates real-world data handling for a software company using three primary tables: `PROGRAMMER`, `SOFTWARE`, and `STUDIES`. This project demonstrates how to use advanced SQL queries to extract insights about programmers, software development, package sales, and academic history.

---

  Database Structure

### 1. PROGRAMMER Table
- `PROGRAMMER_ID` – Unique ID for each programmer
- `NAME1` – Name of the programmer
- `DOB` – Date of birth
- `SEX` – Gender
- `PROF1`, `PROF2` – First and second programming proficiencies
- `SALARY` – Monthly salary
- `INSTITUTE` – Institute where programmer studied
  2. SOFTWARE Table
- `SOFTWARE_ID` – Unique software ID
- `PROGRAMMER_ID` – Developer ID (linked to `PROGRAMMER.PROGRAMMER_ID`)
- `SOFTWARE_NAME` – Name of the software
- `DEVELOPMENT_LANGUAGE` – Language used for development
- `DEVELOPMENT_COST` – Cost to build the software
- `SELLING_PRIZE` – Selling price
- `COPIES_SOLD` – Number of units sold
- `PROFIT` – Calculated profit = (SELLING_PRIZE - DEVELOPMENT_COST) * COPIES_SOLD

  3. STUDIES Table
- `PROGRAMMER_ID` – Linked to `PROGRAMMER`
- `COURSE` – Course name studied
- `INSTITUTE` – Institute name
- `FEES` – Fees of the course
- `DURATION` – Duration in months

---

 Concepts Covered

- Joins: `INNER`, `LEFT`, `RIGHT`
- Aggregation: `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`
- Subqueries and Nested SELECTs
- GROUP BY and HAVING clauses
- WHERE with AND/OR/NOT operators
- NULL handling
- UPDATE and ALTER commands

---

  Sample SQL Queries Solved

Here are some sample business questions solved using SQL in this project:

1. List all programmers who don't know PASCAL or C.
2. Show details of programmers with no proficiency in Clipper, COBOL, or PASCAL.
3. Language-wise average development cost and selling price.
4. Each programmer with number of packages developed.
5. Each profit value with total programmers and number of packages.
6. Details of software created by the most experienced programmer from BDPS.
7. List of all female programmers who earn more than the highest-paid male.
8. Details of the developer of the highest-selling software package.
9. Find the institute of the programmer who developed the most expensive software.
10. List all programmers who haven’t developed any packages.
11. Display software created in a language not listed in the programmer’s proficiencies.
12. Female programmers born after 1975 and male programmers born before 1965.
13. Institute-wise total package count, sales value, and copies sold.
14. Packages developed by males earning over ₹3000.
15. List female programmers earning more than any male.
16. Male programmers earning less than average female salary.
17. Languages of highest and lowest selling packages.
18. Packages with below-average number of copies sold.
19. Costliest software developed in PASCAL.
20. Copies sold of the software with the smallest profit.
21. Language used in the highest grossing package.
22. Name of the developer of the least sold software.
23. Courses whose fees are ±₹1000 from the average fee.
24. Courses having below-average fee.
25. Institute offering the most expensive course.

---

  Folder Structure

sql-programmer-software-management/
│
├── schema.sql # Contains table creation and data insertion
├── queries.sql # All 25+ business SQL queries
└── README.md # This file



---

  Getting Started

To run this project:

1. Clone this repository:
git clone https://github.com/your-username/sql-programmer-software-management.git
cd sql-programmer-software-management



2. Open any SQL tool (e.g., MySQL Workbench, SSMS, PostgreSQL, DB Browser for SQLite).

3. Run `schema.sql` to create and populate tables.

4. Run `queries.sql` to test your SQL query knowledge.

---

  Prerequisites

- Basic SQL knowledge
- Any RDBMS like MySQL, SQL Server, PostgreSQL
- SQL Client to execute queries

---

 Author

**Isha Santosh Khadke**  
_Passionate about databases, data science, and solving real-world problems using SQL and programming._

---

 License

This project is licensed under the [MIT License](LICENSE).
