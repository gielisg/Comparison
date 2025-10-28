drop table if exists "informix".arceid_purge ;
create table "informix".arceid_purge 
  (
    inv_ref integer not null ,
    entrid integer not null ,
    entrtypecd char(2) not null 
  );

