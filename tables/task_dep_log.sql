drop table if exists "informix".task_dep_log ;
create table "informix".task_dep_log 
  (
    task_dep_log_ref serial not null ,
    task_id integer not null ,
    dep_type char(1) 
        default 'I' not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second,
    note varchar(254),
    dep_name varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dep_type IN ('I' ,'C' ,'E' )) constraint "informix".i_c_e
  );

