/* ====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.
-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;
========================================================================================*/
/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
Id ve isim'i beraber Primary Key yapin.
---------------------------------------------------------------------------------------*/

create table firmalar(
id INT,
isim VARCHAR(20),
iletisim_isim VARCHAR(20),
CONSTRAINT firmalar_pk PRIMARY KEY(id,isim)
);
USE SYS;
/*--------------------------------------------------------------------------------------
2) Icine 3 kayit ekleyin :
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez').
---------------------------------------------------------------------------------------*/

INSERT INTO firmalar VALUES
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');

SELECT*FROM firmalar;

-- Id'si 3 olan firmanın ismini 'KRM' olarak güncelleyiniz
UPDATE firmalar
SET isim='KRM'
WHERE id=3;

-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.
UPDATE firmalar
SET isim='FDS', id=4
WHERE iletisim_isim='Veli Gul';

-- Ismi ACB olan firmanin iletisim ismini 'Osman Can' olarak guncelleyiniz.
UPDATE firmalar
SET iletisim_isim='Osman Can'
WHERE isim='ACB';

-- Iletisim ismi Osman Can olanın iletisim ismini Ayse Can olarak güncelleyiniz
UPDATE firmalar
SET iletisim_isim='Ayse Can'
WHERE iletisim_isim='Osman Can';