--================       CONSTRAINTS DEFINITIONS  =========================
-- NOT NULL  ->Column Can not be null
--UNIQUE
--PRIMARY KEY -> can not be null and should be unique
--FOREIGN KEY -> shows referance, make connections between tables.
--CHECK -> data on row provide certain conditions
--DEFAULT -> takes initial value

--================       CONSTRAINTS EXAMPLE 1st Way  =========================
CREATE TABLE calisanlar
(
id CHAR(5)PRIMARY KEY,
isim VARCHAR2(50)NOT NULL UNIQUE,
maas NUMBER(5) NOT NULL,
ise_baslama DATE
);

INSERT INTO calisanlar VALUES('101','Ahmet Aslan',7000,'03/04/2020');
INSERT INTO calisanlar VALUES('102','',7000,'03/04/2021');
INSERT INTO calisanlar VALUES('103','Ahmet Aslan1',7000,'03/04/2022');
INSERT INTO calisanlar VALUES('104','Ahmet Aslan2',7000,'03/04/2023');
INSERT INTO calisanlar VALUES('105','Ahmet Aslan3',7000,'03/04/2024');
INSERT INTO calisanlar VALUES('106','Ahmet Aslan',7000,'03/04/2024');

--================       CONSTRAINTS 2nd Way  =========================
CREATE TABLE calisanlar
(
id CHAR(5),
isim VARCHAR2(50)UNIQUE,
maas NUMBER(5) NOT NULL,
ise_baslama DATE,
CONSTRAINT id_pk PRIMARY KEY(id)
);

INSERT INTO calisanlar VALUES('101','Ahmet Aslan',7000,'03/04/2020');
INSERT INTO calisanlar VALUES('102','Mehmet',7000,'03/04/2021');
INSERT INTO calisanlar VALUES('103','Ahmet Aslan1',7000,'03/04/2022');
INSERT INTO calisanlar VALUES('104','Ahmet Aslan2',7000,'03/04/2023');
INSERT INTO calisanlar VALUES('105','Ahmet Aslan3',7000,'03/04/2024');
INSERT INTO calisanlar VALUES('106','Ahmet Aslan4',7000,'03/04/2024');

--================       FOREIGN KEY     =========================
-- Parent must have same id or PRIMARY KEY
-- Child should be deleted before PARENT, more than one FOREIGN KEY can be.
CREATE TABLE adresler
(
adres_id CHAR(5), --REFERENCES calisanlar(id),
sokak VARCHAR2(50),
cadde VARCHAR2(30),
sehir VARCHAR(15),
CONSTRAINT fk_id FOREIGN KEY(adres_id) REFERENCES CALISANLAR(id)
);

INSERT INTO adresler VALUES('101','TEPE','ENVER','ORDU1');
INSERT INTO adresler VALUES('102','TEPE1','ENVER','ORDU1');
INSERT INTO adresler VALUES('103  ','TEPE2','ENVER','ORDU2');
INSERT INTO adresler VALUES('104','TEPE3','ENVER','ORDU3');
INSERT INTO adresler VALUES('105','TEPE4','ENVER','ORDU4');
INSERT INTO adresler VALUES('106','TEPE4','ENVER','ORDU4');




SELECT * FROM calisanlar;
SELECT * FROM adresler;
SELECT * FROM calisanlar, adresler
WHERE id='101';

DROP  TABLE calisanlar;

DROP  TABLE adresler;