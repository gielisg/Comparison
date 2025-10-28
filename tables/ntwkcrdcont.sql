drop table if exists "informix".ntwkcrdcont ;
create table "informix".ntwkcrdcont 
  (
    ntwkcrdcontid serial not null ,
    ntwkcrdplanid integer not null ,
    debtor_code char(10),
    ntwkcrdcontwefr datetime year to second not null ,
    ntwkcrdcontweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

