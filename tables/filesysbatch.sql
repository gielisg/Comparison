drop table if exists "informix".filesysbatch ;
create table "informix".filesysbatch 
  (
    filesysbatchref serial not null ,
    batchcnfgref integer,
    batchdir varchar(255) not null ,
    subdir varchar(255),
    batchstat varchar(8) not null ,
    filereccount integer not null ,
    remotepath varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

