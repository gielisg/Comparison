drop table if exists "informix".billstepconf ;
create table "informix".billstepconf 
  (
    billstepconfcode char(4) not null ,
    billstepconfnarr varchar(128),
    billstepdisp char(1),
    hotbillstep char(1) 
        default 'N' not null ,
    batchcnfgref integer,
    externalproc char(1) 
        default 'N' not null ,
    file_type_code char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (billstepdisp IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (hotbillstep IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (externalproc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

