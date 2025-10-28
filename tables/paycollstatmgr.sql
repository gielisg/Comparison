drop table if exists "informix".paycollstatmgr ;
create table "informix".paycollstatmgr 
  (
    status_mgr_ref serial not null ,
    curr_statcode char(4) not null ,
    avail_statcode char(4) not null ,
    status_mgr_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

