drop table if exists "informix".inabox_cdr ;
create table "informix".inabox_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(1) not null ,
    cust_no integer,
    line_seq_no integer,
    phone_number varchar(80),
    batch_no integer,
    call_seq_no varchar(20),
    charge_type char(5),
    date_start varchar(29),
    date_end varchar(29),
    duration integer,
    origin varchar(16),
    destination varchar(20),
    service_id char(2),
    group_charge decimal(13,3),
    retail_charge decimal(13,3),
    tariff_code varchar(80,10),
    chg_description varchar(200),
    chg_units integer,
    extra_info varchar(25),
    extra_info2 varchar(25),
    cl_status char(1)
  );

