drop table if exists "informix".prodtype ;
create table "informix".prodtype 
  (
    prodtypecode char(4) not null ,
    prodtypenarr varchar(32) not null ,
    prodtypedispordr integer not null ,
    prodtypeenbl char(1) 
        default 'Y' not null ,
    prodtypedflt char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (prodtypeenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (prodtypedflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

