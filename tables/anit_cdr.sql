drop table if exists "informix".anit_cdr ;
create table "informix".anit_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(20) not null ,
    inv_date char(10),
    orig_num varchar(50) not null ,
    cl_start_date char(10) not null ,
    cl_start_time char(8) not null ,
    dialled_num varchar(50),
    cl_duration integer,
    cl_data_vol integer,
    qty integer,
    units varchar(10),
    orig_location varchar(50),
    term_location varchar(50),
    chg_exc_gst decimal(10,2),
    chg_gst decimal(10,2),
    call_type varchar(4),
    call_type_desc varchar(50),
    call_rate varchar(50)
  );

