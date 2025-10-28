drop table if exists "informix".ordritemstat ;
create table "informix".ordritemstat 
  (
    ordritemstatcode char(4) not null ,
    ordritemstatnarr varchar(32,10) not null ,
    ordritemstatordr integer not null ,
    ordritemstatenbl char(1) 
        default 'Y' not null ,
    ordritemstatdflt char(1) 
        default 'N' not null ,
    sys_status char(1) not null ,
    auth_op_action char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sys_status IN ('O' ,'C' )) constraint "informix".sys_status,
    
    check (ordritemstatenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ordritemstatdflt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (auth_op_action IN ('Y' ,'N' )) constraint "informix".yes_no
  );

