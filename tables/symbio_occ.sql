drop table if exists "informix".symbio_occ ;
create table "informix".symbio_occ 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(64),
    inv_date char(10),
    chg_date char(10),
    chg_time char(8),
    trans_desc varchar(128),
    serv_num varchar(64),
    external_ref varchar(64),
    qty decimal(12,2),
    chg_incl_gst decimal(12,4),
    chg_exc_gst decimal(12,4),
    chg_gst decimal(12,4),
    chg_type varchar(64),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

