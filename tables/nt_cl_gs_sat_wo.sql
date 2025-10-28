drop table if exists "informix".nt_cl_gs_sat_wo ;
create table "informix".nt_cl_gs_sat_wo 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cl_dt_tabcd char(2) not null ,
    phone_num varchar(64),
    cl_start_dt datetime year to second,
    num_called char(18),
    unit char(1),
    unitquantity decimal(15,7),
    cl_duration interval hour to second,
    tar_class_code smallint,
    nt_cost decimal(12,6),
    nt_cost_ex decimal(12,6),
    nt_cost_tax decimal(12,6),
    ws_cost decimal(12,6),
    ws_cost_ex decimal(12,6),
    ws_cost_tax decimal(12,6),
    nt_free_cl_code char(1),
    nt_cl_svin char(6),
    imei char(15),
    cl_start_dt_srvr datetime year to second,
    bparty_destn char(18),
    nl_code char(3),
    err_code char(3),
    bus_unit_code char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18) 
        default user not null 
  );

