drop table if exists "informix".m2_adsl_chg ;
create table "informix".m2_adsl_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_number varchar(20),
    cust_id varchar(20),
    service_number varchar(100),
    service_type char(1),
    charge_type varchar(10),
    details varchar(200),
    date_from varchar(10),
    date_to varchar(10),
    charge varchar(20),
    gst varchar(10),
    payment varchar(20),
    invoice_number varchar(20),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

