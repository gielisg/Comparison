drop table if exists "informix".doc_srvc_type ;
create table "informix".doc_srvc_type 
  (
    doc_id integer not null ,
    srvctypecode char(4) not null 
  );

