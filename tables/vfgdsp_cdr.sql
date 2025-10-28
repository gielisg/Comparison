drop table if exists "informix".vfgdsp_cdr ;
create table "informix".vfgdsp_cdr 
  (
    vfgdsp_cdr_ref serial not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    period_start date not null ,
    period_end date not null ,
    user_name varchar(63) not null ,
    customer_id varchar(80) not null ,
    customer_code varchar(80) not null ,
    vf_opco_id varchar(80),
    vf_opco_code varchar(10) not null ,
    timestamp varchar(80) not null ,
    unique_trans_id varchar(20) not null ,
    imsi varchar(80) not null ,
    msisdn varchar(30) not null ,
    tim_state char(1),
    serving_opco varchar(120),
    session_start varchar(35),
    session_end varchar(35),
    bytes_input integer,
    bytes_output integer,
    apn varchar(60),
    session_start_dt datetime year to second,
    session_end_dt datetime year to second
  );

