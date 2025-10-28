drop table if exists "informix".nt_cl_not_load2 ;
create table "informix".nt_cl_not_load2 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    cl_dt_tabcd char(2) not null ,
    phone_num varchar(120) not null ,
    cl_start_dt datetime year to second,
    num_called varchar(64,10),
    unit char(1),
    unitquantity decimal(20,10),
    cl_duration interval hour(4) to second,
    tar_class_code smallint,
    nt_cost decimal(18,10),
    nt_cost_ex decimal(18,10),
    nt_cost_tax decimal(18,10),
    ws_cost decimal(18,10),
    ws_cost_ex decimal(18,10),
    ws_cost_tax decimal(18,10),
    nt_free_cl_code char(1),
    nt_cl_svin char(6),
    imei char(15),
    cl_start_dt_srvr datetime year to second,
    bparty_destn varchar(32),
    nl_code char(3),
    bus_unit_code char(2),
    err_code char(3),
    status_id char(4),
    status_desc varchar(64),
    rating_a_party varchar(64),
    rating_b_party varchar(64),
    rating_rule smallint,
    rtl_non_disc_ex decimal(18,10),
    nt_cl_reas_code char(2),
    note varchar(255),
    case_no varchar(16),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18) 
        default user not null 
  );

