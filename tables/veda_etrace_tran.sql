drop table if exists "informix".veda_etrace_tran ;
create table "informix".veda_etrace_tran 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_number varchar(20) not null ,
    product_code varchar(20) not null ,
    channel_code char(2) not null ,
    trans_date char(10) not null ,
    trans_time char(8) not null ,
    third_party_cst decimal(7,2),
    enq_purp_code char(2),
    matched_flag char(1),
    job_number varchar(10),
    subject varchar(80),
    file_number varchar(10),
    user_id varchar(10),
    user_name varchar(50),
    quantity integer 
        default 1 not null ,
    client_field1 varchar(64),
    client_field2 varchar(64),
    search_cri varchar(64),
    trans_ref varchar(32),
    source varchar(32) 
        default 'eTrace' not null ,
    ia_portfolio varchar(200)
  );

