drop table if exists "informix".u2wout_cdr ;
create table "informix".u2wout_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    last_nm varchar(36) not null ,
    first_nm varchar(36) not null ,
    email varchar(200),
    area_code varchar(10) not null ,
    alloc_num varchar(200) not null ,
    sub_id varchar(64) not null ,
    date_time varchar(20) not null ,
    rate decimal(10,3) not null ,
    description varchar(100),
    number_to varchar(20),
    country varchar(200),
    pages integer,
    quantity decimal(10,2),
    price_each decimal(10,3) not null ,
    ext_price decimal(10,3),
    tax_rate decimal(10,3),
    tax_amt decimal(10,3),
    total_amt decimal(10,3),
    bill_id varchar(10),
    sales_item_id varchar(10) not null ,
    batch_sale_id varchar(10),
    batch_tot varchar(10),
    call_ref_c varchar(10),
    call_ref_n integer,
    client_ref varchar(100),
    department varchar(100)
  );

