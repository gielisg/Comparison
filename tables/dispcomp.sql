drop table if exists "informix".dispcomp ;
create table "informix".dispcomp 
  (
    dispcompcode char(4) not null ,
    dispcompnarr varchar(32,10) not null ,
    dispcompdispordr integer not null ,
    dispcompenbl char(1) 
        default 'Y' not null ,
    dispcompdflt char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dispcompenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (dispcompdflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

