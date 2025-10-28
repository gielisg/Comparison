drop table if exists "informix".nextepv_cdr ;
create table "informix".nextepv_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    reseller_acc_no varchar(10),
    processing_dt datetime year to second,
    transaction_dt datetime year to second,
    billed_num varchar(20),
    cust_acc_num varchar(10),
    cust_acc_name varchar(40),
    sli varchar(10),
    site_name varchar(40),
    product_code varchar(10),
    product_name varchar(40),
    origin varchar(20),
    target varchar(20),
    rated_units interval second(8) to second,
    reseller_price decimal(16,4),
    cust_ref_no varchar(20),
    calltype char(10)
  );

