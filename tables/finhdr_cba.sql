drop table if exists "informix".finhdr_cba ;
create table "informix".finhdr_cba 
  (
    fin_ref integer not null ,
    cba_tranid integer not null 
  );

