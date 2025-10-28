drop table if exists "informix".message_attachment ;
create table "informix".message_attachment 
  (
    id serial not null ,
    msgid integer not null ,
    doc_id integer,
    uri varchar(254)
  );

