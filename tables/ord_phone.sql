drop table if exists "informix".ord_phone ;
create table "informix".ord_phone 
  (
    ord_id integer not null ,
    phone_type_code char(2) not null ,
    phone_ref integer
  );

