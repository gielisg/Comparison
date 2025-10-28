drop table if exists "informix".billrunstatus ;
create table "informix".billrunstatus 
  (
    billrunstatcode char(4) not null ,
    billrunstatnarr varchar(64,16),
    auth_state char(1) 
        default 'N' not null ,
    allow_update char(1) 
        default 'N' not null ,
    allow_unwind char(1) 
        default 'N' not null ,
    view_step_stat char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (view_step_stat IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (auth_state IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_update IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_unwind IN ('Y' ,'N' )) constraint "informix".yes_no
  );

