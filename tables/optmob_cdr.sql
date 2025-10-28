drop table if exists "informix".optmob_cdr ;
create table "informix".optmob_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acct_number varchar(20,10),
    sv_acct_no varchar(50,10),
    service_num varchar(60,10),
    user_contact varchar(30),
    call_date varchar(38,8),
    call_time char(8),
    cl_date_time varchar(20),
    num_dialled varchar(60,10),
    call_origin varchar(80),
    call_destn varchar(80),
    call_duration decimal(13,0),
    call_volume decimal(13,0),
    gst_flag char(1),
    call_charge decimal(11,3),
    usage_id varchar(80),
    usage_desc varchar(120),
    promotion_id varchar(10),
    product_name varchar(80),
    rate_flag varchar(30),
    st_flag char(1),
    re_rate_flag char(1),
    load_date varchar(20)
  );

