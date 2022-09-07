use midsem_implementation;
CREATE TABLE hospital (
	hid integer not null unique,
    licenseNumber varchar(255) unique not null,
    Hname varchar(255),
    Hlocation varchar(255),
    primary key(hid)
  );
  select* from hospital