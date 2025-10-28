drop table if exists "informix".dep_fin_hdr ;
create table "informix".dep_fin_hdr 
  (
    dep_id integer not null ,
    fin_ref integer not null 
  );

