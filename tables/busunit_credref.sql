drop table if exists "informix".busunit_credref ;
create table "informix".busunit_credref 
  (
    bus_unit_code char(2) not null ,
    credit_ref integer not null ,
    contact_type char(1) not null ,
    contact_sub_type char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

