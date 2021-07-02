
-- # ASSIGNMENT-1 # --

--CREATE DATABASE DEMO;

--USE DEMO;

----------------------------------

CREATE TABLE EMP
(EID CHAR(5),
NAME VARCHAR(20),
ADDR VARCHAR(40),
CITY VARCHAR(20),
DOB DATE,
PHONE CHAR(14),
EMAIL VARCHAR(30));

----------------------------------

INSERT INTO EMP 
VALUES('E0001', 'Krishna', 'no.13 vathalkalam street, govidanagaram', 
		'Theni', '11-09-1997', '8939152272', 'sarakrishna.k@gmail.com');

INSERT INTO EMP 
VALUES ('E0002', 'Saraswathi', 'no.56/85 Kasigurusami street, maliputhur', 
		'Sriviliputhur', '04-14-1978', '9092875718', 'saraswathi.k@yahoo.com');

INSERT INTO EMP 
VALUES ('E0003', 'Dhivyabharathi', 'no.12/32 vanniyar street, kotivakkam', 
		'Chennai', '04-11-1991', '9626265468', 'dhivyyk@gmail.com');

INSERT INTO EMP 
VALUES ('E0004', 'Kariyamal', 'no.26 Indian bank street, varusanadu', 
		'Theni', '10-21-1968', '9626106254', 'kariyamalk.k@gmail.com');

INSERT INTO EMP 
VALUES ('E0005', 'Sreeja', 'no.56 police colony, anna nagar', 
		'Chennai', '11-08-1998', '8956234512', 'sreeja1998@yahoo.com');

INSERT INTO EMP 
VALUES ('E0006', 'Emimal', 'no.5/11 church road , sathchiyapuram', 
		'Sivakasi', '12-06-1998', '9428835774', 'yashminjemima@gmail.com');

INSERT INTO EMP 
VALUES ('E0007', 'Vignesh', 'no.68/75 ponni street, chrompet', 
		'Chennai', '12-06-1996', '8629637415', 'vikichintu56@gmail.com');

INSERT INTO EMP 
VALUES ('E0008', 'Shyam sundar', 'no.420 kannagi street, kknagar', 
		'Chennai', '08-08-1998', '9684251730', 'shyamprathap@yahoo.com');



INSERT INTO EMP 
VALUES ('E0009', 'Abilash', 'no.13/42, 2nd street, Govindanagaram', 
		'Theni', '05-02-1997', '8945462750', 'abilashabhii@gmail.com');

INSERT INTO EMP 
VALUES ('E0010', 'Harsith', 'no.56 police colony, anna nagar', 
		'Chennai', '07-21-2001', '9444456103', 'harshith@gmail.com');

----------------------------------

SELECT * FROM EMP;