drop table if exists "informix".ordritemsrvcdisc ;
create table "informix".ordritemsrvcdisc 
  (
    ordritemdiscid serial not null ,
    ordritemid integer not null ,
    discid integer not null ,
    discamnt decimal(8,2),
    debtor_code char(10) not null ,
    bsftteln1 varchar(64),
    bsftteln2 varchar(64),
    bsftteln3 varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

