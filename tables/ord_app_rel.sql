drop table if exists "informix".ord_app_rel ;
create table "informix".ord_app_rel 
  (
    ord_app_stp_id integer not null ,
    oth_stp_id integer not null 
  );

