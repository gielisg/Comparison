drop table if exists "informix".doc_contact ;
create table "informix".doc_contact 
  (
    contact_code char(10) not null ,
    doc_id integer not null 
  );

