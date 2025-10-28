drop table if exists "informix".truv_cdr ;
create table "informix".truv_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    reseller_acc varchar(100,8),
    process_date varchar(30,22),
    trans_date varchar(30,22),
    billed_num varchar(63,9),
    cust_acct_num varchar(100,8),
    cust_acct_nm varchar(180),
    sli varchar(80,8),
    site_name varchar(100),
    product_code varchar(80),
    product_name varchar(100),
    origin varchar(63,10),
    target varchar(63,10),
    rated_units integer,
    resell_price decimal(13,3),
    cust_ref_num varchar(100),
    call_type varchar(80,5)
  );

