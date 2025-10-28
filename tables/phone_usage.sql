drop table if exists "informix".phone_usage ;
create table "informix".phone_usage 
  (
    contact_code char(10) not null ,
    phone_type_code char(2) not null ,
    phone_ref integer not null ,
    start_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

