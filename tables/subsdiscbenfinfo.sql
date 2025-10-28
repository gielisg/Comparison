drop table if exists "informix".subsdiscbenfinfo ;
create table "informix".subsdiscbenfinfo 
  (
    subsdiscbenfid serial not null ,
    subsdiscid integer not null ,
    discbenfid integer not null ,
    subsdiscbenfwefr datetime year to second not null ,
    subsdiscbenfweto datetime year to second not null ,
    subsdiscbenfinfo varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

