use midsem_implementation;

-- select hid from date_of_availability where doa = '2022-03-14'

select distinct(addhar_number) from bookappointment where vaccinetype = 'covishield';

select Hid from date_of_availability where doa = '2022-03-14';

create view double_vaccination as 
select addhar_number from citizen where vaccination_status = 2;

select avg(age) from citizen where vaccination_status = '1' and city = 'delhi';