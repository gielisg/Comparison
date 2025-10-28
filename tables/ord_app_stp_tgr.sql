drop table if exists "informix".ord_app_stp_tgr ;
create table "informix".ord_app_stp_tgr 
  (
    ord_app_stp_id integer not null ,
    tgr_dt datetime year to second 
        default current year to second not null ,
    read_dt datetime year to second
  );

