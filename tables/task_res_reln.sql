drop table if exists "informix".task_res_reln ;
create table "informix".task_res_reln 
  (
    task_id integer not null ,
    contact_code char(10) not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second,
    res_notified_dt datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

