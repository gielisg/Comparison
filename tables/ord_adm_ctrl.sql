drop table if exists "informix".ord_adm_ctrl ;
create table "informix".ord_adm_ctrl 
  (
    ord_id integer not null ,
    err_code char(20),
    err_desc varchar(254),
    dly_reas_code char(2),
    opened char(1) 
        default 'N' not null ,
    opened_by varchar(18,10),
    opened_dt datetime year to second,
    wait_on_cust char(1) 
        default 'N' not null ,
    wait_reas_code char(2)
  );

