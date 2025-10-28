drop table if exists "informix".task_stat_hist ;
create table "informix".task_stat_hist 
  (
    task_stat_href serial not null ,
    task_id integer not null ,
    status_id integer not null ,
    status_dt datetime year to second not null ,
    status_by varchar(18,10) not null ,
    event_ref integer,
    corr_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

