use midsem_implementation;
create table bookAppointment(
	 addhar_number integer NOT NULL,
     hid integer not null,
     DOA date,
     TOA time,
     vaccineType ENUM('Covishield','Covaxin'),
     Status Enum("Yes","No"), 
     primary key(addhar_number,hid,DOA),
      FOREIGN KEY (addhar_number) REFERENCES citizen(addhar_number)
     ,FOREIGN KEY (hid) REFERENCES hospital(hid)
);	




select *  from bookAppointment;



insert into bookAppointment values(11110000,10,'2021-07-07','13:50:01','Covaxin','No');
insert into bookAppointment values(11111234,2,'2020-12-26','12:15:45','Covishield','yes');
insert into bookAppointment values(11111234,2,'2021-12-30','15:50:00','Covishield','No');
insert into bookAppointment values(1234,3,'2022-03-30','15:50:00','Covaxin','No');
insert into bookAppointment values(1234,26,'2022-03-14','12:15:00','Covaxin','yes');
insert into bookAppointment values(1111134,20,'2022-03-14','12:00:04','Covishield','Yes');








