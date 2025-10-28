drop table if exists "informix".sigfox_usage ;
create table "informix".sigfox_usage 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    device_id varchar(64,10),
    trans_dt datetime year to second,
    load_trans_dt datetime year to second,
    upload decimal(10,3),
    download decimal(10,3),
    roaming char(1) 
        default 'N' not null ,
    country char(2),
    contract_id varchar(64,10),
    
    check (roaming IN ('Y' ,'N' )) constraint "informix".yes_no
  );

