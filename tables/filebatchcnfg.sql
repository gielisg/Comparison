drop table if exists "informix".filebatchcnfg ;
create table "informix".filebatchcnfg 
  (
    batchcnfgref serial not null ,
    batchcnfgnarr varchar(255) not null ,
    compile_filetype char(10),
    localbasedir varchar(255) not null ,
    subdirtemplate varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

