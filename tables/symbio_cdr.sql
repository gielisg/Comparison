drop table if exists "informix".symbio_cdr ;
create table "informix".symbio_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(20),
    inv_date char(10),
    orig_num varchar(32),
    cl_start_date char(10) not null ,
    cl_start_time char(8) not null ,
    term_num varchar(32),
    cl_duration integer,
    orig_location varchar(64),
    term_location varchar(64),
    chg_exc_gst decimal(12,4),
    chg_gst decimal(12,4),
    call_type varchar(64),
    call_type_desc varchar(64),
    call_rate varchar(64),
    serv_num varchar(32),
    uni_call_id varchar(20),
    billing_id varchar(64),
    direction varchar(64)
  );

