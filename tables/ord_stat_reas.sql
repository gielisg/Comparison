drop table if exists "informix".ord_stat_reas ;
create table "informix".ord_stat_reas 
  (
    status_reas_id char(2) not null ,
    status_type char(3) not null ,
    status_reas_narr char(32) not null 
  );

