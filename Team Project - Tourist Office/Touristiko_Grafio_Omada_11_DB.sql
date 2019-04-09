-- Τουριστικό Γραφείο DB
-- ΤΕΙ Ανατολικής Μακεδονία και Θράκης
-- Συμμετέχοντες: Παπαρούνας Φώτιος 3792, Κόπανος Οδυσσέας 3330
-- Επιβλέπων Καθηγητής: Τσιμπερίδης Γιάννης

CREATE DATABASE Touristiko_Grafio;
USE Touristiko_Grafio;

CREATE TABLE PELATHS(
	A_AP int NOT NULL auto_increment,
    FName VARCHAR(20) NOT NULL,
    LName VARCHAR(25) NOT NULL,
	Thl BIGINT NOT NULL,
	Email VARCHAR(50) NULL,
	Hm_Genisis Date NOT NULL,
    PRIMARY KEY (A_AP)
);

CREATE TABLE PROSFORA(
	A_APros int(2) NOT NULL auto_increment,
    Proorismos VARCHAR(250) NOT NULL,
    Timi_Paketou Decimal(6,2) NULL,
    Hm_Anaxorisis Date NULL,
    Hm_Epistrofis Date NULL,	
    PRIMARY KEY (A_APros)
);

CREATE TABLE KATHGORIA(
	A_AC int NOT NULL,
	Eidos VARCHAR(50) NOT NULL,
    Perigrafi VARCHAR(500) NOT NULL,
    Poso_Ekptosis tinyint NOT NULL,
    PRIMARY KEY (A_AC)
);

INSERT INTO PELATHS VALUES
			(1,'MIXALHS', 'KOUTSOS',6945958962,'mixalis_kouts@gmail.com','1932-03-16'),
			(2,'NIKOS', 'KIKOS',6958965375,'nikos69@outlook.com.gr','1956-12-12'),
			(3,'MARIA', 'PAPADOPOYLOY',6985120369,'maria_papa@hotmail.gr','1966-05-11'),
			(4,'AKHS', 'LOYKAS',6957856321,'akis_louk27@yahoo.com','1973-07-20');

INSERT INTO PROSFORA VALUES
			(1,'Parisi',1254.54,'2017-03-14','2017-04-10'),
			(2,'Praga',1384.62,'2018-02-22','2018-05-12'),
			(3,'Londino',2500.45,'2018-05-03','2018-05-14'),
			(4,'Fillipines',5599.99,'2019-11-20','2020-01-08');

INSERT INTO KATHGORIA VALUES
			(1,'Oikogeniko','Ksenodoxeio 3 asterwn Hmidiatrofi', '25'),
			(2,'Atomiko','Ksenodoxeio 5 asterwn souita me thea to kastro', '32'),
			(3,'Foititiko','Ksenodoxeio 4 asterwn pliris diatrofh dwrean episkepsi sto louvro', '15'),
			(4,'Epagelmatiko','Vila sipla sto kyma me thea to hliovasilema', '45');

-- Ερωτήματα 4:

CREATE TABLE KATASTIMATA(
	A_AK int NOT NULL,
    Odos VARCHAR(100) NOT NULL,
	Poli VARCHAR(100) NOT NULL,
	Perioxi VARCHAR(100) NULL, 
    TK int NOT NULL, 
	THL bigint NOT NULL,    
    PRIMARY KEY (A_AK)
);

CREATE TABLE YPALLILOS(
	A_AY int NOT NULL,
    ID_KAT int NOT NULL,
    FName VARCHAR(20) NOT NULL,
    LName VARCHAR(25) NOT NULL,
	Thl BIGINT NOT NULL,
	Dieuthinsi VARCHAR(50) NOT NULL,
    Misthos Decimal(6,2) NULL,
    PRIMARY KEY (A_AY)
);

CREATE TABLE TOPOI_DIAMONIS(
	A_ATD int NOT NULL,
    Onoma VARCHAR(100) NOT NULL,
	Dieuthinsi VARCHAR(100) NOT NULL,
    Poli VARCHAR(50) NOT NULL,
    TK int NOT NULL,
    PRIMARY KEY (A_ATD)
);

CREATE TABLE MESO_METAFORAS(
	A_AMM int NOT NULL,
    Onoma VARCHAR(100) NOT NULL,
	Tupos VARCHAR(100) NOT NULL,   
    Diathesimotita int NOT NULL,  
    PRIMARY KEY (A_AMM)
);

INSERT INTO KATASTIMATA VALUES
			(1,'Train 21', 'Xios','',68754,2551048695),
			(2,'Pasalimani 32','Kavala','',67895,2551251237),
			(3,'Faliro 23','Katerini','',63456,2548545399),
			(4,'Rodou 87', 'Alexandroupoli','',67824,2258402900);

INSERT INTO YPALLILOS VALUES
			(1,1,'Antonis', 'Antoniou',6985856968,'Karali 32', 1007.32),
			(2,1,'Giannis','Gianatos',6975852301,'Onasi 65', 973.90),
			(3,2,'Xrisa','Ioannou',69458900236,'Kartali 2', 1300.56),
			(4,3,'Kirgiakos', 'Koulis',6902365900,'Othonos 34', 1586.69),
			(5,4,'Nikos', 'Aggelou',6902365945,'Othonos 89', 1466.96); 
            
INSERT INTO TOPOI_DIAMONIS VALUES
			(1,'Athina Hotel', 'Road 9','Fillipines', 54896),
			(2,'Ramada Plaza','Erdogan 87', 'Praga', 45723),
			(3,'Caesar Palace','Iouliou Caesar 45','Londino', 78493),
			(4,'Galaxy Hotel', 'Napoleon 65','Parisi', 54963);
			
INSERT INTO MESO_METAFORAS VALUES
			(1,'Autokinito','SUV', 8),
			(2,'Aeroplano','ARK 8759', 56),
			(3,'Ploio','Kotero', 4),
			(4,'Treno', 'MPS 68K',150);
	
CREATE TABLE KAT_EXEI_PEL(
	A_AP2 int NOT NULL,
	A_AK2 int NOT NULL,
    PRIMARY KEY (A_AP2,A_AK2),
    FOREIGN KEY (A_AK2) REFERENCES KATASTIMATA(A_AK),
    FOREIGN KEY (A_AP2) REFERENCES PELATHS(A_AP)
);

CREATE TABLE SIMETEXI_SE(
	A_AP3 int NOT NULL,
	A_APros2 int NOT NULL,
    PRIMARY KEY (A_AP3,A_APros2),
    FOREIGN KEY (A_AP3) REFERENCES PELATHS(A_AP),
    FOREIGN KEY (A_APros2) REFERENCES PROSFORA(A_APros)    
);

ALTER TABLE YPALLILOS add constraint ypallilos_ibfk_1 FOREIGN KEY (ID_KAT) REFERENCES KATASTIMATA(A_AK);
ALTER TABLE PROSFORA add constraint prosfora_ibfk_1 FOREIGN KEY (A_APros) REFERENCES KATHGORIA (A_AC);
ALTER TABLE PROSFORA add constraint prosfora_ibfk_2 FOREIGN KEY (A_APros) REFERENCES MESO_METAFORAS(A_AMM);
ALTER TABLE PROSFORA add constraint prosfora_ibfk_3 FOREIGN KEY (A_APros) REFERENCES TOPOI_DIAMONIS(A_ATD);

-- Ερωτήματα
-- Ερώτημα 3:
INSERT INTO KAT_EXEI_PEL VALUES
			(1,1),				-- 1 κατάστήμα μπορεί να έχει 2+ υπαλλήλους.
			(1,2);
select * from KAT_EXEI_PEL; 
           
INSERT INTO SIMETEXI_SE VALUES
			(1,1),			   -- 2+ πελάτες μπορούν να πάρουν τιν ιδια προφορα.
			(2,1);
select * from SIMETEXI_SE;

-- Ερώτημα 4:
select Onoma,Tupos from MESO_METAFORAS where  Onoma like 'A%';
select FName,LName from YPALLILOS where  LName like '%u';
select FName,LName,Thl from PELATHS where  Thl like '__5%';

-- Ερώτημα 5:
select FName,LName,max(Misthos) as Megaliteros_Misthos_Ypallilou from YPALLILOS group by Misthos desc;
select Proorismos,min(Timi_Paketou) as Mikroteri_Timi_Paketou from PROSFORA group by Timi_Paketou asc;
select count(A_ATD) as Arthisma_Topon_Diamonis from TOPOI_DIAMONIS; 
select sum(Misthos) as Athrisma_Misthon_Ypallilon from YPALLILOS;
select avg(Misthos) as Mesos_Misthos_Ypallilon from YPALLILOS;

-- Ερώτημα 6:
-- Εμφανίζει τα ονοματεπώνυμα τους μισθούς και σε ποιο υποκατάστημα δουλεύουν.
select KAT.A_AK,YPAL.FName,YPAL.LName,YPAL.Misthos from KATASTIMATA as KAT inner join YPALLILOS as YPAL on KAT.A_AK=YPAL.ID_KAT;

-- Εμφανίζει ποίος πελάτης έχει πάρει ποία προσφορά.
select PEL.FName,PEL.LName,PROS.A_APros2 as Dothenda_Prosfora from PELATHS as PEL left join SIMETEXI_SE as PROS on PEL.A_AP=PROS.A_AP3;

-- Ερώτημα 7:
-- Ο Α εργαζόμενος δουλεύει στο Α κατάστημα (πόλη,οδό).
create view View1 as(select ID_KAT, FName, LName,Poli,Odos from YPALLILOS,KATASTIMATA where ID_KAT=A_AK group by A_AY);

select * from View1;

-- Που θα πάμε, με ποιο ΜΜ θα πάμε και πόσο θα μας κοστίσει.
create view View2 as(select pr.A_APros,concat(td.Onoma,'  ',td.Dieuthinsi,'  ',td.Poli,'  ',td.TK) as Dieuthinsi,concat(mm.Onoma,'  ',mm.Tupos) as Meso_Metaforas,mm.Diathesimotita,pr.Timi_Paketou 
						from PROSFORA as pr,TOPOI_DIAMONIS as  td,MESO_METAFORAS as mm where A_APros=A_ATD and A_ATD=A_AMM group by A_APros);

select * from View2;

-- Ερώτημα 8:
-- Εμφανίζει σε ποια κατηγορία μισθού ανήκει ένας Υπάλληλος σύμφωνα με την δοθέντα τιμή.
delimiter //
create procedure pro1(in mishos decimal(6,2))
begin 
if mishos > 1500.00 then 
select 'Υψηλόμισθος' as 'Υπάλληλος' ;
elseif  mishos > 1250.40 then 
select 'Ικανοποιητικος_Μισθος' as 'Υπάλληλος' ;
elseif   mishos >= 900.40 then 
select 'Χαμηλος_Μισθος' as 'Υπάλληλος' ;
else 
select 'Μηδενικος_μισθος'  as 'Υπάλληλος' ;
end if;
end

delimiter ;
call pro1(1000);

drop procedure pro1;

-- Εμφανίζουμε το  Επίθετο  του Υπαλλήλου με Μεταβλητή(@a) χρήστη.
delimiter //
create procedure pro2 (in ay int,out sname varchar(20))
begin
    select LName into sname from YPALLILOS where A_AY=ay;
end

delimiter ;
call pro2(3,@a);
select @a as Epitheto;

drop procedure pro2;

-- Εμφανίζει τα ονοματεπώνυμα των πελατών σε ένα αλφαριθμητικό (str).
delimiter //
create procedure pro3(in pl int)
begin
		declare str text default '';
		declare i int default 0;
		declare ono varchar(30);
		declare epith varchar(30);
		while i<=pl do
			select FName into ono from PELATHS limit i,1;
			select LName into epith from PELATHS limit i,1;
			set str=concat(str,ono,' ',epith,'\n');
			set i=i+1;
		end while;
		select str as "Pelates";
end

delimiter ;
call pro3(3);

drop procedure pro3;