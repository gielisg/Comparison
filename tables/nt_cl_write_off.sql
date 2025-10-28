drop table if exists "informix".nt_cl_write_off ;
create table "informix".nt_cl_write_off 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    cl_dt_tabcd char(2) not null ,
    phone_num varchar(120),
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
    bparty_destn char(18),
    nl_code char(3),
    err_code char(3),
    bus_unit_code char(2),
    wo_reascode char(4) not null ,
    write_off_date date 
        default today not null ,
    status_id char(4),
    status_desc varchar(64),
    rating_a_party varchar(64),
    rating_b_party varchar(64),
    rating_rule smallint,
    rtl_non_disc_ex decimal(18,10),
    prnt_nt_file_num integer,
    prnt_nt_rec_num integer,
    last_updated datetime year to second 
        default current year to second,
    updated_by varchar(18) 
        default user
  );

