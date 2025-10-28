drop table if exists "informix".template_attach ;
create table "informix".template_attach 
  (
    id serial not null ,
    template_id integer not null ,
    attach_loc varchar(250) not null ,
    doc_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

