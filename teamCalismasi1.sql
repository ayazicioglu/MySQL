use sys;
CREATE TABLE bizim_group(
okul_no VARCHAR(4) UNIQUE,
isim VARCHAR(25) NOT NULL,
adres VARCHAR(10),
derece DOUBLE
);
drop table bizim_group;
INSERT INTO bizim_group VALUES ('1001','Betul ','Antep',4.7);
INSERT INTO  bizim_group VALUES('1002','Ahmet Yazicioglu','Ankara',4.6);
INSERT INTO  bizim_group VALUES ('1003','Mutlu Tankisi','Istanbul',4.6);
INSERT INTO bizim_group VALUES ('1004','Sinan Senan','Izmir',4.8);
INSERT INTO  bizim_group VALUES ('1005','Meryem Catalbas','Izmir',4.7);
INSERT INTO  bizim_group VALUES (null,'Esra Turker','Maras',4.8);
INSERT INTO  bizim_group VALUES(null,'Kubra','Maras',4.9);
INSERT INTO  bizim_group VALUES ('1006','Aysee Nuiye','Antep',4.7);
INSERT INTO  bizim_group VALUES ('1007','Umre','Kayseri',5.0);

-- 1-memleketi Izmir olan kisileri, isim ters sirali listeleyelim

select * from bizim_group where adres='Izmir' order by isim desc;

-- 2 derecesi en yuksek olan 3 kisinin isim  ve adreslerini listeleyelim
select isim, adres from bizim_group order by derece desc limit 3 ;

-- 3 her sehir icin min ve max derecelrei bulalim
select adres, min(derece) as min_Derece, max(derece) as max_derece 
from bizim_group 
group by adres;

-- 4 Sehre gore toplam kisi sayisini, isim sirali bulalim
select adres, count(isim) as toplam_kisi 
from bizim_group 
group by adres 
order by toplam_kisi;

-- 5 Sehirlere gore derecesi 4.6 dan fazla olan kisi  sayisini bulalim
select adres, count(isim)
from bizim_group
where derece> 4.6
group by adres;

-- 6 Sehirlere gore  kisi sayisi  birden buyuk ise yazdirin
select adres, count(isim) as kisi_sayisi
from bizim_group
group by adres having kisi_sayisi>1 ;

-- 7 Her memleketin derecesi 
select adres, min(derece) as min_derece
from bizim_group
group by adres having min_derece>4.7;



select adres, max(derece) as max_derece
from bizim_group
group by adres having max_derece>4.7;



select adres, max(derece) as max_derece
from bizim_group
group by adres having max_derece>4.6
order by adres;

select * from bizim_group
order by derece
limit 2;


