drop table if exists "informix".doc_ord_hdr ;
create table "informix".doc_ord_hdr 
  (
    ord_id integer not null ,
    doc_id integer not null 
  );

