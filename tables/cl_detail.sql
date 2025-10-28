drop table if exists "informix".cl_detail ;
create table "informix".cl_detail 
  (
    cl_ser_num serial not null ,
    inv_ref integer not null ,
    sp_cn_ref integer not null ,
    sp_plan_ref integer not null ,
    num_called varchar(64,10) not null ,
    tar_class_code smallint not null ,
    cl_start_dt datetime year to second not null ,
    unit char(1) not null ,
    unitquantity decimal(20,10) not null ,
    cl_duration interval hour(4) to second not null ,
    nt_cost decimal(18,10) not null ,
    nt_cost_ex decimal(18,10) 
        default 0.0000000000 not null ,
    nt_cost_tax decimal(18,10) 
        default 0.0000000000 not null ,
    rtl_non_disc_ex decimal(18,10) not null ,
    rtl_non_disc_tax decimal(18,10) not null ,
    rtl_disc_ex decimal(18,10) not null ,
    rtl_disc_tax decimal(18,10) not null ,
    timebandcode char(4),
    bparty_destn varchar(32),
    cl_start_dt_srvr datetime year to second,
    nt_cl_svin char(6),
    cl_status smallint 
        default 0 not null ,
    tariff_num integer 
        default 1 not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    process_ref integer not null ,
    cl_dt_tabcd char(2) not null 
  );

