drop table if exists "informix".isph_cdr ;
create table "informix".isph_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account varchar(60),
    cli varchar(60),
    cld varchar(60),
    call_type varchar(100),
    call_desc varchar(200),
    on_net varchar(60),
    date_time varchar(60),
    duration varchar(20),
    amount decimal(13,5)
  );

