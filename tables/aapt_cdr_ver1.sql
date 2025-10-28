drop table if exists "informix".aapt_cdr_ver1 ;
create table "informix".aapt_cdr_ver1 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cli_number varchar(30),
    rate_type integer,
    call_date char(9),
    call_time char(4),
    rate_period char(1),
    revn_call_type char(3),
    destination varchar(25),
    num_dialled varchar(30),
    call_duration char(10),
    call_charge decimal(10,0),
    band_step char(4),
    gst_flag char(1)
  );

