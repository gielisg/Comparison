drop table if exists "informix".primus_cdr ;
create table "informix".primus_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    seq_no integer not null ,
    service_no varchar(63) not null ,
    call_code varchar(15),
    call_date char(10),
    call_time char(8),
    call_duration integer,
    orig_no varchar(63),
    term_no varchar(63),
    origination varchar(20),
    call_tariff varchar(10),
    orig_carrier varchar(50)
  );

