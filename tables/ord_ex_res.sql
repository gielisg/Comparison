drop table if exists "informix".ord_ex_res ;
create table "informix".ord_ex_res 
  (
    bus_unit_code char(2) not null ,
    rpt_date date not null ,
    bus_unit_narr char(32) not null ,
    app_case_cnt integer 
        default 0 not null ,
    can_case_cnt integer 
        default 0 not null ,
    dec_case_cnt integer 
        default 0 not null ,
    app_avg_res_hrs decimal(8,1) 
        default 0.0 not null ,
    can_avg_res_hrs decimal(8,1) 
        default 0.0 not null ,
    dec_avg_res_hrs decimal(8,1) 
        default 0.0 not null 
  );

