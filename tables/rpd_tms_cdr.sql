drop table if exists "informix".rpd_tms_cdr ;
create table "informix".rpd_tms_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    debtor_code varchar(20,7) not null ,
    crm_acct_id varchar(20,10) not null ,
    service_id varchar(60,10) not null ,
    trans_date date not null ,
    batch_id varchar(20),
    invoice varchar(20),
    amt_excl_gst decimal(10,2) not null ,
    amt_incl_gst decimal(10,2) not null ,
    trans_item varchar(20,10) not null ,
    comment varchar(255),
    disc_excl_gst decimal(10,2)
  );

