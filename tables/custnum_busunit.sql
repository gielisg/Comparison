drop table if exists "informix".custnum_busunit ;
create table "informix".custnum_busunit 
  (
    nt_cust_num char(10) not null ,
    bus_unit_code char(2) not null ,
    spid char(15) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

