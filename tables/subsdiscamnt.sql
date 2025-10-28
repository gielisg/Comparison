drop table if exists "informix".subsdiscamnt ;
create table "informix".subsdiscamnt 
  (
    subsdiscamntid serial not null ,
    subsdiscid integer not null ,
    disceligid integer not null ,
    subsdiscamntwefr datetime year to second not null ,
    subsdiscamntweto datetime year to second,
    subsdiscamntamnt decimal(17,7) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

