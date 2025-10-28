drop table if exists "informix".task_reln ;
create table "informix".task_reln 
  (
    task_id integer not null ,
    oth_task_id integer not null ,
    reln_type char(1) 
        default 'P' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reln_type IN ('P' ,'R' )) constraint "informix".reln_type
  );

