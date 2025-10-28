drop table if exists "informix".aaptre2cdr ;
create table "informix".aaptre2cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(2),
    product_type char(10),
    cust_number decimal(11,0),
    supplier char(10),
    service_type varchar(20),
    node varchar(55),
    call_origin varchar(30),
    call_type varchar(30),
    num_called varchar(30),
    a_party varchar(30),
    call_datetime datetime year to second,
    call_destination varchar(60),
    call_duration interval hour(5) to second,
    call_units decimal(14,4),
    charge_amt decimal(14,4),
    rate_period varchar(40),
    station_id decimal(11,0),
    gst_applicable char(1),
    gst_amt decimal(14,4),
    answer_point varchar(30),
    department_num char(10)
  );

