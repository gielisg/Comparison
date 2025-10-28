drop table if exists "informix".ibmob_cdr ;
create table "informix".ibmob_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_ref varchar(255),
    record_type varchar(30),
    start_time varchar(30),
    orig_num varchar(60),
    dest_num varchar(60),
    tariff_code varchar(200),
    cal_duration varchar(30),
    uom varchar(30),
    call_desc varchar(100),
    call_group varchar(100),
    base_price varchar(30),
    cust_price varchar(30),
    base_plan varchar(30),
    cust_plan varchar(30)
  );

