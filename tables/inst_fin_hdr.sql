drop table if exists "informix".inst_fin_hdr ;
create table "informix".inst_fin_hdr 
  (
    inst_id integer not null ,
    fin_ref integer not null 
  );

