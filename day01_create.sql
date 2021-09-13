--================       CREATE TABLE     =========================

--1 Create Table
/* Create */
CREATE TABLE student
(
std_id CHAR(3),
std_name VARCHAR2(20),
std_age NUMBER(3)
);

--================       INSERT DATA      =========================

--3 INSERT DATA to STUDENT TABLE
INSERT INTO student VALUES('101','Ahmet Can',30);
INSERT INTO student VALUES('102','Mehmet Can',31);
INSERT INTO student VALUES('103','Ayse Can',32);
INSERT INTO student VALUES('104','Fatma Can',33);
INSERT INTO student VALUES('105','Veli Can',34);
INSERT INTO student VALUES('106','Bera Can',35);

-- INSERT PARTIAL DATA, not entered will be NULL
INSERT INTO student (std_id,std_name) VALUES('107','Enver');

--================       EXAMPLE     =========================
CREATE TABLE urunler
(
    urun_id NUMBER,
    urun_adi VARCHAR2(50),
    tarih DATE,
    fiyat NUMBER(5,2)
);

INSERT INTO urunler VALUES(101,'Grape','12/9/2022',223.33);
INSERT INTO urunler VALUES(102,'Apple','12/9/2023',224.33);
INSERT INTO urunler VALUES(103,'Pearl','12/9/2024',225.33);
INSERT INTO urunler VALUES(104,'Banana','12/9/2025',226.33);
INSERT INTO urunler VALUES(105,'Kiwi','12/9/2026',227.33);



--4 SELECT(READ)
SELECT * FROM student;
SELECT * FROM urunler;

--2 DROP TABLE
DROP TABLE student;
DROP TABLE urunler;