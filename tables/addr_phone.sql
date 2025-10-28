drop table if exists "informix".addr_phone ;
create table "informix".addr_phone 
  (
    address_ref integer not null ,
    phone_ref integer not null ,
    phone_type_code char(2) not null 
  );

