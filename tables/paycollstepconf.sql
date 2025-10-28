drop table if exists "informix".paycollstepconf ;
create table "informix".paycollstepconf 
  (
    pcstepconfcode char(4) not null ,
    pcstepconfnarr varchar(32) not null ,
    stepreqauth char(1) 
        default 'N' not null ,
    allowexternal char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (allowexternal IN ('Y' ,'N' )) constraint "informix".yes_no
  );

