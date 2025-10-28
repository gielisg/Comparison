drop table if exists "informix".binemail ;
create table "informix".binemail 
  (
    binemailid serial not null ,
    email_ref integer,
    binmailadd char(254) not null ,
    binmaildelete char(1) 
        default 'N' not null ,
    disp_ordr integer,
    bus_unit_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (binmaildelete IN ('Y' ,'N' )) constraint "informix".yes_no
  );

