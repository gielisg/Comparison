drop table if exists "informix".ordrsrce ;
create table "informix".ordrsrce 
  (
    ordrsrcecode char(4) not null ,
    ordrsrcenarr varchar(32,10) not null ,
    ordrsrcedispordr integer not null ,
    ordrsrceenbl char(1) 
        default 'Y' not null ,
    ordrsrcedflt char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordrsrceenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ordrsrcedflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

