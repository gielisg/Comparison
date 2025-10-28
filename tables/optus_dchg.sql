drop table if exists "informix".optus_dchg ;
create table "informix".optus_dchg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(2),
    product_id decimal(14,0),
    acct_num varchar(14),
    serv_num varchar(24),
    serv_num_type integer,
    serv_id decimal(16,0),
    serv_id_type integer,
    serv_id_desc varchar(30),
    nonrecr_chg_id decimal(10,0),
    nonrecr_chg_desc varchar(30),
    nonrecr_chg_eff datetime year to second,
    nonrecr_chg_amt decimal(16,4),
    gst_ind char(1),
    nrc_dr_cr_flag char(1)
  );

