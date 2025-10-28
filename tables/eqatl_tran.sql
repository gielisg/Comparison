drop table if exists "informix".eqatl_tran ;
create table "informix".eqatl_tran 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sub_acct_code varchar(10),
    product_code char(4),
    channel_code char(2),
    trans_date char(10),
    trans_time char(8),
    third_party_cost decimal(7,2),
    enq_purpose_code char(2),
    matched char(1),
    job_number varchar(10),
    subject varchar(80),
    file_number varchar(10),
    user_id varchar(10),
    user_name varchar(50),
    quantity varchar(7),
    amount decimal(7,2),
    cdf1 varchar(64),
    cdf2 varchar(64),
    search_criteria varchar(64),
    trans_ref varchar(32),
    source varchar(20),
    ia_portfolio_name varchar(200)
  );

