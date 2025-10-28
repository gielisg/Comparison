drop table if exists "informix".ord_st_hist ;
create table "informix".ord_st_hist 
  (
    ord_id integer not null ,
    ord_status_code char(2) not null ,
    orig_stat_dt datetime year to second not null ,
    event_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

