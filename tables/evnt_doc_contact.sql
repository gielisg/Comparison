drop table if exists "informix".evnt_doc_contact ;
create table "informix".evnt_doc_contact 
  (
    contact_code char(10) not null ,
    doc_id integer not null ,
    event_ref integer not null 
  );

