drop table if exists "informix".fin_cc_hdr ;
create table "informix".fin_cc_hdr 
  (
    cc_tranid integer not null ,
    fin_ref integer not null 
  );

