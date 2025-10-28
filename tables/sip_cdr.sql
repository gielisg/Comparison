drop table if exists "informix".sip_cdr ;
create table "informix".sip_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_from varchar(60,14) not null ,
    call_to varchar(60,11) not null ,
    country varchar(80),
    sip_desc varchar(120),
    call_dt datetime year to second,
    charge_time char(5),
    charge_amt decimal(13,7),
    account varchar(20),
    charge_time_min varchar(10),
    charge_time_sec varchar(10),
    service_name varchar(80),
    charged_qty integer,
    service_unit varchar(20)
  );

