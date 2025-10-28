drop table if exists "informix".ordrprty ;
create table "informix".ordrprty 
  (
    ordrprtycode char(4) not null ,
    ordrprtynarr varchar(32,10) not null ,
    ordrprtydispordr integer not null ,
    ordrprtyenbl char(1) 
        default 'Y' not null ,
    ordrprtydflt char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordrprtyenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ordrprtydflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

