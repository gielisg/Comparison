drop table if exists "informix".usage_summ_unbld ;
create table "informix".usage_summ_unbld 
  (
    usgsummunbldid serial not null ,
    sp_cn_ref integer not null ,
    unit char(1) not null ,
    no_records integer not null ,
    min_cl_start_dt datetime year to second not null ,
    max_cl_start_dt datetime year to second not null ,
    unitquantity decimal(20,10) not null ,
    nt_cost_ex decimal(18,10) not null ,
    rtl_disc_ex decimal(18,10) not null ,
    cl_dt_tabcd char(2)
  );

