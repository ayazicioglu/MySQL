-- ************************ Fen Lisesi Tablosundan *****************************
CREATE TABLE lise (
okul_no CHAR(4) UNIQUE,
isim VARCHAR(50) NOT NULL,
derece DOUBLE,
adres VARCHAR(100),
son_degisiklik_tarihi DATE
);
use sys;
INSERT INTO lise VALUES ('1001','Fatih Polat',89,'Ankara','2022-12-05');
INSERT INTO lise VALUES ('1002','Efe Torun',85,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1003','Esra Turker',95,'Izmir','2022-12-05');
INSERT INTO lise VALUES ('1004','Mustafa Yilmaz',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1005','Elif Kesen',92,'Berlin','2022-12-05');
INSERT INTO lise VALUES ('1006','Tugay Kala',75,null,'2022-12-05');
INSERT INTO lise VALUES ('1007','Semra Ulusoy',null,null,null);
INSERT INTO lise VALUES ('1008',null,89,'Ankara','2022-12-05');
INSERT INTO lise (okul_no,isim,derece,son_degisiklik_tarihi) VALUES ('1009','Mehmet Cil',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Salim Oz',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Suleyman Karaca',45,'2022-12-05');
INSERT INTO lise VALUES ('','Ozgur Ali',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('','Yusuf Enes',92,'Berlin','2022-12-05');
select*from lise;

drop table lise;
-- Q1 : Okul_no ' su 1005'ten buyuk olan ogrencilerin tum bilgilerini listeleyin.
select *
from lise
where okul_no>'1005';

-- Q2 : Ismi Elif Kesen olan ogrencinin derecesini listeleyin.
select derece
from lise
where isim='Elif Kesen';
-- Q3 : Derecesi 90dan buyuk olan ogrencilerin okul_no ve isimlerini listeleyin.
select okul_no,isim
from lise
where derece>90;
-- Q4 : Ismi Tugay Kala olan ogrencinin derecesini listeleyin :)
select derece
from lise
where isim='Tugay Kala';
-- Q5 : Istanbulda yasayan ogrencilerin isimlerini listeleyin.fen_lisesi
select isim
from lise
where adres='Istanbul';