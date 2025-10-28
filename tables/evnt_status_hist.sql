drop table if exists "informix".evnt_status_hist ;
create table "informix".evnt_status_hist 
  (
    hist_id serial not null ,
    event_ref integer not null ,
    evnt_stat_code char(2) not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

