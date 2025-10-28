drop table if exists "informix".evnt_st_hist ;
create table "informix".evnt_st_hist 
  (
    evnt_st_hist_ref serial not null ,
    sched_stat_code char(2),
    event_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

