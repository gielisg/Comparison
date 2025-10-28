drop table if exists "informix".anit_se ;
create table "informix".anit_se 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_num varchar(20),
    inv_date char(10),
    service_num varchar(18) not null ,
    start_date char(10) not null ,
    end_date char(10),
    trans_desc varchar(255),
    qty integer,
    chg_exc_gst decimal(10,2),
    chg_gst decimal(10,2),
    ser_num varchar(50),
    asset_tag varchar(50),
    mac_addr char(18),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

