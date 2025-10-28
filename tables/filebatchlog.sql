drop table if exists "informix".filebatchlog ;
create table "informix".filebatchlog 
  (
    filebatchlogref serial not null ,
    filesysbatchref integer not null ,
    filesysfileref integer not null ,
    logmsgordr integer not null ,
    logmsg lvarchar(500),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

