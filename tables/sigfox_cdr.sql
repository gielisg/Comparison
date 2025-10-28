drop table if exists "informix".sigfox_cdr ;
create table "informix".sigfox_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    deviceid varchar(80,20),
    contract_number varchar(40),
    period_start_dt datetime year to second,
    period_end_dt datetime year to second,
    upload_count integer,
    download_count integer,
    country_code varchar(5),
    roaming char(1) 
        default 'N' not null ,
    record_dt datetime year to second,
    customer_id varchar(20),
    add_info varchar(254),
    
    check (roaming IN ('Y' ,'N' )) constraint "informix".yes_no
  );

