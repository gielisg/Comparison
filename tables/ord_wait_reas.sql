drop table if exists "informix".ord_wait_reas ;
create table "informix".ord_wait_reas 
  (
    wait_reas_code char(2) not null ,
    wait_reas_narr char(32) not null 
  );

