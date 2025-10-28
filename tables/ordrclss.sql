drop table if exists "informix".ordrclss ;
create table "informix".ordrclss 
  (
    ordrclsscode char(4) not null ,
    ordrclssnarr varchar(32,10) not null ,
    ordrclssdispordr integer not null ,
    ordrclssenbl char(1) 
        default 'Y' not null ,
    ordrclssdflt char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordrclssenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ordrclssdflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

