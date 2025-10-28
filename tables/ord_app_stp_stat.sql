drop table if exists "informix".ord_app_stp_stat ;
create table "informix".ord_app_stp_stat 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

