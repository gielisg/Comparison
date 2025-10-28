drop table if exists "informix".vfgdsp_sms ;
create table "informix".vfgdsp_sms 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    period_start date not null ,
    period_end date,
    user_name varchar(63) not null ,
    customer_id varchar(80),
    customer_code varchar(80),
    vf_opco_id varchar(80),
    vf_opco_code varchar(120) not null ,
    timestamp varchar(80),
    imsi varchar(80),
    event_date date,
    tim_state char(1),
    sms_wakeup_count integer,
    smsmt_count integer,
    smsmo_count integer,
    bill_column varchar(20),
    orig_rec_num integer,
    usage_type varchar(20)
  );

