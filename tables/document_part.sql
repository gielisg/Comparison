drop table if exists "informix".document_part ;
create table "informix".document_part 
  (
    id serial not null ,
    doc_id integer not null ,
    seq_num smallint not null ,
    document_part lvarchar(32000)
  );

