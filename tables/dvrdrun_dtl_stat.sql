drop table if exists "informix".dvrdrun_dtl_stat ;
create table "informix".dvrdrun_dtl_stat 
  (
    status_id serial not null ,
    description varchar(254) not null ,
    sys_status char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

