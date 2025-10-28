drop table if exists "informix".aapt_cdr ;
create table "informix".aapt_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cli_number varchar(30),
    rate_type integer,
    origin_cli varchar(10),
    origin_csi varchar(10),
    origin_city varchar(30),
    origin_state char(3),
    call_datetime datetime year to second,
    rate_period char(1),
    revn_call_type char(3),
    locn_call_type char(3),
    rate_table char(4),
    destination varchar(25),
    num_dialled varchar(30),
    call_duration interval hour(4) to second,
    call_charge decimal(10,2),
    band_step char(4),
    gst_flag char(1),
    rate_date date
  );

