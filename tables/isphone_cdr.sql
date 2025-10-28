drop table if exists "informix".isphone_cdr ;
create table "informix".isphone_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    aparty varchar(20,1),
    bparty varchar(20,1),
    call_destination varchar(64,1),
    call_description varchar(64,1),
    dt_start datetime year to second,
    call_duration decimal(10,0),
    charge_amount decimal(12,6)
  );

