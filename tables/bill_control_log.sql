drop table if exists "informix".bill_control_log ;
create table "informix".bill_control_log 
  (
    bill_period integer not null ,
    cycle_code char(2) not null ,
    fin_src_code char(2) not null ,
    debtor_code char(10) not null ,
    log_type char(4) not null 
  );

