drop table if exists "informix".it_adsl ;
create table "informix".it_adsl 
  (
    nt_file_num integer not null ,
    nt_src_rec_num integer not null ,
    adsl_meter_dtm datetime year to second,
    adsl_service char(18),
    adsl_source_byte decimal(15,0),
    adsl_destn_byte decimal(15,0)
  );

