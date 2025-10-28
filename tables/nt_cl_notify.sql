drop table if exists "informix".nt_cl_notify ;
create table "informix".nt_cl_notify 
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
    down_unitquantity decimal(20,10),
    up_unitquantity decimal(20,10),
    cl_duration interval hour(4) to second,
    cl_start_dt_srvr datetime year to second,
    bparty_destn varchar(32),
    bus_unit_code char(2),
    status_id char(4),
    status_desc varchar(64),
    note varchar(255),
    call_type char(1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

