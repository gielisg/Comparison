drop table if exists "informix".bdrpt_cdr ;
create table "informix".bdrpt_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    client_name varchar(80),
    user_name varchar(63),
    acs_bill_ref varchar(63),
    is_moderator varchar(10),
    call_start_dt varchar(20),
    service_type varchar(80),
    call_type varchar(80),
    tariff_group varchar(100),
    bill_duration integer,
    amt_in_cur decimal(13,3)
  );

