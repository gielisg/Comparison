drop table if exists "informix".ord_app_stp ;
create table "informix".ord_app_stp 
  (
    ord_app_stp_id serial not null ,
    seq_num integer,
    ord_id integer not null ,
    ord_app_rqst_id char(20),
    ass_rqst_id char(20),
    step_type integer not null ,
    required char(1) 
        default 'Y' not null ,
    status_id integer not null ,
    status_dt datetime year to second not null ,
    status_reas_code char(2),
    status_by varchar(18,10),
    start_dt datetime year to second 
        default current year to second not null ,
    end_dt datetime year to second,
    down_time integer 
        default 0 not null ,
    err_code char(10),
    err_desc varchar(254),
    schedule_dt datetime year to second
  );

