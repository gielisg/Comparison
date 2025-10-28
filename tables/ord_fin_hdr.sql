drop table if exists "informix".ord_fin_hdr ;
create table "informix".ord_fin_hdr 
  (
    ord_id integer not null ,
    fin_ref integer not null 
  );

