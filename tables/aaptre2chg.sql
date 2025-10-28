drop table if exists "informix".aaptre2chg ;
create table "informix".aaptre2chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(2),
    product_type char(10),
    cust_number decimal(11,0),
    supplier char(10),
    service_type varchar(20),
    node varchar(55),
    charge_type char(2),
    description varchar(60),
    charge_start_dt date,
    charge_end_dt date,
    charge_amt decimal(14,4),
    gst_applicable char(1),
    gst_amt decimal(14,4),
    credit_duration char(11),
    credit_units decimal(14,4)
  );

