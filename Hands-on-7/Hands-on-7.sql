
-- # ASSIGNMENT-7 # --

--USE EMPLOYEE;

SELECT (DEPT, COUNT(EMPID) AS 'TEAM SIZE', 
	   AVG(SALARY) AS 'AVERAGE SALARY' FROM EMPSAL)
GROUP BY DEPT;

--------------------

SELECT COUNT(EMPID) AS 'COUNT OF MANAGERS' FROM EMPSAL
WHERE DESI = 'MANAGER';

--------------------

SELECT MAX(SALARY) AS 'MAX SALARY', MIN(SALARY) AS 'MIN SALARY' FROM EMPSAL
WHERE DESI = 'ASSOCIATE';

--------------------

SELECT (EMPSAL.DEPT, COUNT(EMP.EMPID) AS 'TEAM SIZE', 
        AVG(SALARY) AS 'AVERAGE SALARY')
FROM EMP 
INNER JOIN EMPSAL
ON EMP.EMPID = EMPSAL.EMPID
WHERE CITY = 'DELHI'
GROUP BY DEPT;

--------------------

SELECT EMPID, NAME,UPPER(CONCAT(
	   LEFT(NAME, 1),
	   LEFT(RIGHT(NAME, LEN(NAME)-CHARINDEX(' ', NAME)),1),
	   RIGHT(EMPID, 3), 
	   '@RCG.COM')) AS 'OFFICIAL MAIL' FROM EMP;

--------------------

SELECT NAME, CITY, PHNO, EMAIL FROM EMP
WHERE (YEAR(GETDATE())-YEAR(DOB))>=40;

--------------------

SELECT EMP.EMPID, NAME, DOJ FROM EMP
INNER JOIN EMPSAL
ON EMP.EMPID = EMPSAL.EMPID
WHERE DATEDIFF(YEAR,DOJ,GETDATE())>5;

--------------------




SELECT * FROM EMP
INNER JOIN EMPSAL
ON EMP.EMPID = EMPSAL.EMPID
WHERE DESI LIKE '%MANAGER%' AND MONTH(GETDATE()) = MONTH(DOB);

--------------------

SELECT EMPID, DEPT, DESI,SALARY FROM EMPSAL
WHERE SALARY IN(SELECT MAX(SALARY) FROM EMPSAL);

--------------------

SELECT EMPID, NAME FROM EMP
WHERE LEN(NAME) IN (SELECT MAX(LEN(NAME)) FROM EMP);