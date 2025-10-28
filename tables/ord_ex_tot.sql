drop table if exists "informix".ord_ex_tot ;
create table "informix".ord_ex_tot 
  (
    bus_unit_code char(2) not null ,
    rpt_date date not null ,
    bus_unit_narr char(32) not null ,
    new_case_cnt integer 
        default 0 not null ,
    out_case_cnt integer 
        default 0 not null 
  );

