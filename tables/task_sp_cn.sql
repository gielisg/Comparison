drop table if exists "informix".task_sp_cn ;
create table "informix".task_sp_cn 
  (
    task_id integer not null ,
    sp_cn_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

