drop table if exists "informix".fastcom_tolls ;
create table "informix".fastcom_tolls 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_date varchar(10),
    phone_number varchar(30),
    service_item_desc varchar(30),
    service_item2 varchar(30),
    service_item3 varchar(30),
    site varchar(20),
    units varchar(10),
    price varchar(10),
    record_type varchar(20)
  );

