drop table if exists "informix".spcnpramdetl ;
create table "informix".spcnpramdetl 
  (
    spcnpramdetlid serial not null ,
    spcnpramid integer not null ,
    subsdiscid integer not null ,
    cycle_code char(2) not null ,
    bill_period integer not null ,
    subscriber_code char(10) not null ,
    spcnpramdetlwefr datetime year to second not null ,
    spcnpramdetlweto datetime year to second not null ,
    spcnpramdetlamnt decimal(20,10) not null ,
    spcnpramdetlused decimal(20,10) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

