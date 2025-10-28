drop table if exists "informix".contact ;
create table "informix".contact 
  (
    contact_code char(10) not null ,
    contact_key varchar(64),
    name char(80) not null ,
    type char(1) not null ,
    sub_type_code char(2) 
        default 'CO' not null ,
    firstname varchar(32),
    middlename varchar(32),
    bus_unit_code char(2) not null ,
    cont_status char(3) not null ,
    status_dt datetime year to second not null ,
    dealer_id char(10),
    timezone_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

