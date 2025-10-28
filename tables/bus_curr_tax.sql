drop table if exists "informix".bus_curr_tax ;
create table "informix".bus_curr_tax 
  (
    bus_unit_code char(2) not null ,
    curr_code char(3) not null ,
    taxid integer not null ,
    curr_tax_default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (curr_tax_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

