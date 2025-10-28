drop table if exists "informix".evnt_doc_ord_hdr ;
create table "informix".evnt_doc_ord_hdr 
  (
    doc_id integer not null ,
    ord_id integer not null ,
    event_ref integer not null 
  );

