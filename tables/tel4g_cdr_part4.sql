drop table if exists "informix".tel4g_cdr_part4 ;
create table "informix".tel4g_cdr_part4 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    p3_sno integer not null ,
    p4_sno integer not null ,
    p4_part_type char(2),
    p4_funit_disc_type char(1),
    p4_funit_part_crtr char(1),
    p4_fr_vol_uom_pkey varchar(4),
    p4_fr_vol_volume varchar(20),
    p4_fa_vol_uom_pkey varchar(4),
    p4_fa_vol_volume varchar(20),
    p4_fr_chrg_amount varchar(15),
    p4_fr_chrg_curr_pk char(3),
    p4_fr_chrg_tax char(1),
    p4_ba_data_acct_id varchar(10),
    p4_ba_data_acct_tp char(1),
    p4_ba_data_pur_seq varchar(10),
    p4_spare2 varchar(20),
    p4_spare3 varchar(20),
    p4_spare4 varchar(20),
    p4_spare5 varchar(20),
    p4_spare6 varchar(20),
    p4_spare7 varchar(20),
    p4_part_separator char(1)
  );

