drop table if exists "informix".fin_efp_hdr ;
create table "informix".fin_efp_hdr 
  (
    fin_ref integer not null ,
    key1 char(10) not null ,
    key2 char(10),
    key3 char(10)
  );

