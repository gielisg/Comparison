drop table if exists "informix".voxcom_cdr ;
create table "informix".voxcom_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cdr_lineid varchar(50,8),
    call_datetime datetime year to second not null ,
    party_a varchar(63,10) not null ,
    inbound_csn varchar(63,10),
    party_b varchar(63,10) not null ,
    call_duration decimal(15,7) not null ,
    call_cost decimal(12,6),
    call_type varchar(50)
  );

