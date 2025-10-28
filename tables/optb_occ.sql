drop table if exists "informix".optb_occ ;
create table "informix".optb_occ 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(10) not null ,
    inv_date varchar(10) not null ,
    service_num varchar(10) not null ,
    provis_date char(10) not null ,
    order_num varchar(20),
    trans_desc varchar(50) not null ,
    chg_ex_gst decimal(13,3),
    chg_gst decimal(13,3),
    chg_inc_gst decimal(13,3),
    credit_type varchar(12),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

