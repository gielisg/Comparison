drop table if exists "informix".m2_ons_offs ;
create table "informix".m2_ons_offs 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    ser_dtl_id decimal(10,0) not null ,
    service_num varchar(60) not null ,
    pbi varchar(20) not null ,
    bec varchar(50) not null ,
    product_status char(3) not null ,
    effect_date datetime year to second not null ,
    on_off_qty decimal(12,2) not null ,
    on_off_desc varchar(200) not null ,
    product_chg_cd char(1) not null ,
    pon varchar(20)
  );

