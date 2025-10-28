drop table if exists "informix".isp_chg ;
create table "informix".isp_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_num varchar(63) not null ,
    bill_nm varchar(200),
    customer_id varchar(100),
    record_type char(3) not null ,
    prod_bill_id varchar(100),
    ocr_id varchar(100),
    ser_id varchar(100),
    ntr_id varchar(100),
    description varchar(255) not null ,
    quantity decimal(13,4) not null ,
    unit_rate decimal(10,4) not null ,
    effect_date datetime year to second,
    start_date datetime year to second,
    end_date datetime year to second
  );

