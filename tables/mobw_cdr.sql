drop table if exists "informix".mobw_cdr ;
create table "informix".mobw_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_id varchar(20,4),
    company_id varchar(20,3),
    isp_id varchar(20,3),
    package_id varchar(30,11),
    package_type varchar(20,3),
    mw_desc varchar(80) not null ,
    event_id varchar(20,4),
    msisdn varchar(63,11),
    imsi varchar(60,15),
    mw_type varchar(30),
    isp_price decimal(13,5),
    list_price decimal(13,5),
    created_at datetime year to second,
    b_number varchar(63,11),
    call_start datetime year to second not null ,
    call_end datetime year to second,
    call_duration integer,
    iso3 varchar(20,3),
    data_up integer,
    data_down integer,
    bundle_ind char(1),
    qty_charged integer,
    proportional varchar(10),
    gross_price decimal(13,5),
    bill_period char(6)
  );

