drop table if exists "informix".paycollstatus ;
create table "informix".paycollstatus 
  (
    paycollstatcode char(4) not null ,
    paycollstatnarr varchar(32) not null ,
    auth_state char(1) not null ,
    allow_update char(1) not null ,
    allow_unwind char(1) not null ,
    view_step_stat char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

