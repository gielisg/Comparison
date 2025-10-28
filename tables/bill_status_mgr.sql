drop table if exists "informix".bill_status_mgr ;
create table "informix".bill_status_mgr 
  (
    status_mgr_ref serial not null ,
    curr_statcode char(4) not null ,
    avail_statcode char(4) not null ,
    status_mgr_narr varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (curr_statcode != avail_statcode ) constraint "informix".chk_stat_cd2
  );

