drop table if exists "informix".manufacturer ;
create table "informix".manufacturer 
  (
    manu_code char(3) not null ,
    manu_narr varchar(32) not null ,
    contact_code char(10),
    note lvarchar(1000),
    enabled char(1) 
        default 'Y' not null ,
    display_order integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

