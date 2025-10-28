drop table if exists "informix".globe_cdr ;
create table "informix".globe_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cl_start_dtm datetime year to second,
    inbound_num varchar(64),
    originating_num varchar(64),
    tariff_name varchar(64),
    call_duration integer,
    call_charge decimal(12,6),
    user_defined1 varchar(64),
    user_defined2 varchar(64)
  );

