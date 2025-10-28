drop table if exists "informix".bts_cdr ;
create table "informix".bts_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account varchar(20,1),
    from varchar(20,1),
    to varchar(20,1),
    country varchar(20,1),
    description varchar(20,1),
    connect_time varchar(20,1),
    chargetime_minsec varchar(20,1),
    chargetime_secs varchar(20,1),
    charge_amount varchar(20,1),
    service_name varchar(12,1),
    charge_qty integer,
    service_unit varchar(10,1)
  );

