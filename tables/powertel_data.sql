drop table if exists "informix".powertel_data ;
create table "informix".powertel_data 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_id char(6),
    sub_acct char(8),
    fnn char(10) not null ,
    exch_id char(4),
    product_id char(10) not null ,
    narrative varchar(60,1),
    usage_cd char(1),
    usage_down decimal(15,0) not null ,
    usage_up decimal(15,0) not null ,
    tax_cd char(1),
    timestamp datetime year to second not null 
  );

