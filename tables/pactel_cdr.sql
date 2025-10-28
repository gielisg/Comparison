drop table if exists "informix".pactel_cdr ;
create table "informix".pactel_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account varchar(20),
    call_from varchar(60,11),
    call_to varchar(60,11),
    country varchar(80),
    description varchar(120),
    call_dt datetime year to second,
    charge_time_min varchar(10),
    charge_time_sec varchar(10),
    charge_amt decimal(13,7),
    service_name varchar(20),
    charged_qty integer,
    service_unit varchar(10)
  );

