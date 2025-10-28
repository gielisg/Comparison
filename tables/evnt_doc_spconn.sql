drop table if exists "informix".evnt_doc_spconn ;
create table "informix".evnt_doc_spconn 
  (
    sp_cn_ref integer not null ,
    doc_id integer not null ,
    event_ref integer not null 
  );

