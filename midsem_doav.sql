use midsem_implementation;

create table date_of_availability(
		hid INT NOT NULL,
        doa date not null,
        PRIMARY KEY (hid, doa),
        foreign key(hid) references hospital(hid)
);

select *  from date_of_availability;

