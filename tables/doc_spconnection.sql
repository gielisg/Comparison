drop table if exists "informix".doc_spconnection ;
create table "informix".doc_spconnection 
  (
    sp_cn_ref integer not null ,
    doc_id integer not null 
  );

