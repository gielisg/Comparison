drop table if exists "informix".fin_filebatch ;
create table "informix".fin_filebatch 
  (
    fin_filebatchref serial not null ,
    fin_ref integer,
    filesysbatchref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

