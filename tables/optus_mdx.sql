drop table if exists "informix".optus_mdx ;
create table "informix".optus_mdx 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_seq_num decimal(16,0) not null ,
    rec_type varchar(10) not null ,
    acct_num varchar(15) not null ,
    inv_num varchar(15) not null ,
    inv_num_set varchar(20),
    statement_date datetime year to second not null ,
    chg_amount decimal(14,4) not null ,
    chg_date datetime year to second not null ,
    charge_id varchar(15),
    serv_num varchar(63),
    serv_id varchar(20),
    serv_id_type varchar(20),
    serv_id_desc varchar(200),
    chg_type_id varchar(20) not null ,
    chg_type_desc varchar(200) not null ,
    chg_type_desc2 varchar(200),
    prorate_cd varchar(20),
    to_date datetime year to second,
    gst_ind char(1),
    rate varchar(20),
    cust_order_num varchar(20)
  );

