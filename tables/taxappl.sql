drop table if exists "informix".taxappl ;
create table "informix".taxappl 
  (
    taxapplid serial not null ,
    trantypecd char(1) not null ,
    taxid integer not null ,
    taxapplwefr datetime year to second not null ,
    taxapplweto datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

