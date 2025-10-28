drop table if exists "informix".ord_dly_reas ;
create table "informix".ord_dly_reas 
  (
    dly_reas_code char(2) not null ,
    dly_reas_narr varchar(32) not null 
  );

