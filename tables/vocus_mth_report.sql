drop table if exists "informix".vocus_mth_report ;
create table "informix".vocus_mth_report 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    status_id integer 
        default 0 not null ,
    username varchar(50),
    service_name varchar(50),
    account_id varchar(20),
    carrier_id varchar(20),
    domain varchar(50),
    service_type varchar(20),
    line_size varchar(30),
    plan varchar(50),
    status varchar(20),
    connect_date varchar(10),
    loss_date varchar(10),
    port_id varchar(20),
    ntd_id varchar(20),
    comment varchar(255)
  );

