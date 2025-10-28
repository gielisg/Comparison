drop table if exists "informix".optus_sae_chg ;
create table "informix".optus_sae_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(2) not null ,
    product_id decimal(14,0),
    acct_num varchar(14),
    serv_num varchar(24),
    serv_num_type integer,
    serv_id decimal(16,0),
    serv_id_type integer,
    serv_id_desc varchar(30),
    recur_chg_id decimal(10,0),
    recur_chg_desc varchar(30),
    product_eff_dtm datetime year to second,
    bill_eff_dtm datetime year to second,
    product_end_dtm datetime year to second,
    rate decimal(16,4),
    rate_avail_flg char(1),
    gst_ind char(1),
    disconnect_reas integer
  );

