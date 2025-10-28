drop table if exists "informix".optb_cdr ;
create table "informix".optb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(10) not null ,
    inv_date varchar(10) not null ,
    service_num varchar(10) not null ,
    call_start_date char(10) not null ,
    call_start_time char(8) not null ,
    dialled_num varchar(20),
    call_duration integer,
    call_data_vol decimal(12,0),
    orig_location varchar(20),
    term_location varchar(20),
    chg_ex_gst decimal(13,3),
    chg_gst decimal(13,3),
    chg_inc_gst decimal(13,3),
    call_type_code varchar(8) not null ,
    call_type_desc varchar(20) not null ,
    call_rate_code char(2)
  );

