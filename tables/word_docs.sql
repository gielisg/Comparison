drop table if exists "informix".word_docs ;
create table "informix".word_docs 
  (
    doc_id serial not null ,
    file_name varchar(254,10) not null ,
    created_by varchar(18,10) 
        default user not null ,
    created_dt datetime year to second 
        default current year to second not null 
  );

