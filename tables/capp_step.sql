drop table if exists "informix".capp_step ;
create table "informix".capp_step 
  (
    capp_step_id serial not null ,
    contact_code char(10) not null ,
    seq_num integer not null ,
    step_type integer not null ,
    status_id integer not null ,
    status_dt datetime year to second not null ,
    status_reas_code char(2) not null ,
    status_by varchar(18,10),
    start_dt datetime year to second not null ,
    end_dt datetime year to second,
    down_time integer,
    err_code char(10),
    err_desc varchar(254),
    schedule_dt datetime year to second
  );

