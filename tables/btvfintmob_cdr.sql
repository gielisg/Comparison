drop table if exists "informix".btvfintmob_cdr ;
create table "informix".btvfintmob_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account varchar(20,1),
    aparty varchar(40,1),
    bparty varchar(40,1),
    country varchar(40,1),
    description varchar(40,1),
    connect_time datetime year to second,
    chargetime_minsec interval minute(5) to second,
    chargetime_secs interval second(8) to second,
    charge_amount decimal(12,6)
  );

