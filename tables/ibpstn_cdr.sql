drop table if exists "informix".ibpstn_cdr ;
create table "informix".ibpstn_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    uir_id varchar(255),
    customer_id varchar(255),
    orig_date varchar(20),
    orig_time varchar(20),
    full_nat_num varchar(60),
    orig_num varchar(60),
    dest_num varchar(60),
    call_desc varchar(200),
    quantity varchar(13),
    uom_code_dur varchar(10),
    uom_code varchar(10),
    dist_range_desc varchar(200),
    call_duration char(8),
    wh_call_chg decimal(13,4),
    ret_call_chg decimal(13,4),
    call_type varchar(200)
  );

