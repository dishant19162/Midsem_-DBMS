use midsem_implementation;
CREATE TABLE allergy
    (
		addhar_number INT NOT NULL,
        allergy_name varchar(255),
        PRIMARY KEY (addhar_number, allergy_name),
        foreign key(addhar_number) references citizen(addhar_number)
	);
 
 
 
 
 
 
insert into allergy values(1234,'Drug Allergy');
insert into allergy values(1234,'Insect Allergy');
insert into allergy values(1247,'Mold Allergy');
insert into allergy values(1246,'latex Allergy');
insert into allergy values(111100,'Pollen Allergy');
insert into allergy values(111100,'Pet Allergy');

select * from allergy