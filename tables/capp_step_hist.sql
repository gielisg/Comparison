drop table if exists "informix".capp_step_hist ;
create table "informix".capp_step_hist 
  (
    capp_step_id integer not null ,
    status_id integer not null ,
    status_dt datetime year to second,
    status_by varchar(18,10) not null ,
    status_reas_code char(2) not null 
  );

