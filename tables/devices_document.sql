drop table if exists "informix".devices_document ;
create table "informix".devices_document 
  (
    dev_doc_id serial not null ,
    device_id integer not null ,
    doc_id integer not null ,
    wef_dt datetime year to second 
        default current year to second not null ,
    wef_to datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

