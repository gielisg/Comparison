drop table if exists "informix".ntwkcrdplan ;
create table "informix".ntwkcrdplan 
  (
    ntwkcrdplanid serial not null ,
    ntwkcrdplannarr varchar(64) not null ,
    ntwcrdplanaccmbsis char(1) 
        default 'I' not null ,
    ntwcrdplanexprmths integer 
        default 0 not null ,
    ntwcrdplanexprrefr char(1) 
        default 'N' not null ,
    ntwcrdplanrelscrit char(4) 
        default 'IMMD' not null ,
    ntwcrdplanblcksize decimal(10,2) 
        default 0.00 not null ,
    ntwcrdplanenabled char(1) 
        default 'Y' not null ,
    ntwcrdplandispordr integer not null ,
    ntwkcrdplanwefr date not null ,
    ntwkcrdplanweto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

