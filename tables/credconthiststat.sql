drop table if exists "informix".credconthiststat ;
create table "informix".credconthiststat 
  (
    cchiststatcode char(2) not null ,
    cchiststatnarr varchar(32) not null ,
    cchiststatordr integer not null ,
    cchiststatenbl char(1) 
        default 'Y' not null ,
    cont_status char(3),
    end_suspensions char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cchiststatenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (end_suspensions IN ('Y' ,'N' )) constraint "informix".yes_no
  );

