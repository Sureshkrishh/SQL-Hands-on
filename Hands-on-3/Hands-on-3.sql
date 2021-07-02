
-- # ASSIGNMENT-3 # --

--CREATE DATABASE EMPLOYEE;

--USE EMPLOYEE;

-- TO IMPORT TABLES FROM CSV FILE:
	-- FROM THE OBJECT EXPLORER NAVIGATE TO:
		-- EMPLOYEE --> TASKS --> IMPORT FLAT FILE
		-- IMPORT EMP.CSV AND EMPSAL.CSV
    -- TO CONFIRM THE IMPORT UNCOMMENT AND RUN:
		-- SELECT * FROM EMP
		-- SELECT * FROM EMPSAL

-----------------------


-- ADDING CONSTRAINTS TO EMP TABLE


ALTER TABLE EMP
ADD 
CONSTRAINT PKID PRIMARY KEY(EMPID);

ALTER TABLE EMP
ALTER COLUMN NAME VARCHAR(30) NOT NULL;

ALTER TABLE EMP
ADD 
CONSTRAINT CKADDR CHECK (ADDR NOT LIKE '%UTTAM%NAGAR%');

ALTER TABLE EMP
ADD 
CONSTRAINT CKCITY CHECK (CITY IN ('DELHI', 'GURGAON', 
								  'MUMBAI', 'NOIDA', 
								  'DEHRADUN', 'CHANDIGARH'));

ALTER TABLE EMP
ADD 
CONSTRAINT UNQPHNO UNIQUE(PHNO);

ALTER TABLE EMP
ADD
CONSTRAINT CKEMAIL CHECK (EMAIL LIKE '%@GMAIL%' OR 
						  EMAIL LIKE '%@YAHOO%' OR
						  EMAIL LIKE '%@OUTLOOK%');

ALTER TABLE EMP
ADD
CONSTRAINT CKDOB CHECK (DOB <= '01-01-2002');

-----------------------

-- ADDING CONSTRAINTS TO EMPSAL TABLE

ALTER TABLE EMPSAL
ADD
CONSTRAINT FKID FOREIGN KEY (EMPID) REFERENCES EMP(EMPID);

ALTER TABLE EMPSAL
ADD
CONSTRAINT CKDEPT CHECK (DEPT IN ('HR','MIS','OPS','IT','ADMIN','TEMP'));

ALTER TABLE EMPSAL
ADD
CONSTRAINT CKDESI CHECK (DESI IN ('ASSISTANT MANAGER', 'ASSOCIATE', 
							  'DIRECTOR', 'MANAGER', 
							  'SENIOR ASSOCIATE', 'SENIOR MANAGER', 'VP'));

ALTER TABLE EMPSAL
ADD
CONSTRAINT CKBASIC CHECK (SALARY >= 20000);

ALTER TABLE EMPSAL
ADD
CONSTRAINT DFDEPT DEFAULT 'TEMP' FOR DEPT;