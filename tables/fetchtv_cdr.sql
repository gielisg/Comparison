drop table if exists "informix".fetchtv_cdr ;
create table "informix".fetchtv_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    item_id integer,
    item_title varchar(255),
    item_duration integer,
    item_rtl_price float,
    start_dt datetime year to second,
    end_dt datetime year to second,
    isp_customer_ref varchar(40),
    terminal varchar(36),
    transaction_id varchar(36)
  );

