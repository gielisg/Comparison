drop table if exists "informix".phone_type_code ;
create table "informix".phone_type_code 
  (
    phone_type_code char(2) not null ,
    phone_narr char(18),
    phone_format varchar(40)
  );

