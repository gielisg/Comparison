drop table if exists "informix".filesysfiles ;
create table "informix".filesysfiles 
  (
    filesysfileref serial not null ,
    filesysbatchref integer not null ,
    filename varchar(255) not null ,
    file_type_code char(10) not null ,
    filestatcode varchar(8) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

