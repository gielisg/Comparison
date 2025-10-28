drop table if exists "informix".ordrstat ;
create table "informix".ordrstat 
  (
    ordrstatcode char(4) not null ,
    ordrstatnarr varchar(32,10) not null ,
    ordrstatdispordr integer not null ,
    ordrstatenbl char(1) 
        default 'Y' not null ,
    ordrstatdflt char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordrstatenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ordrstatdflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

