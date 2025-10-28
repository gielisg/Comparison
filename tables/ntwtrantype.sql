drop table if exists "informix".ntwtrantype ;
create table "informix".ntwtrantype 
  (
    ntwtrantypecd char(10) not null ,
    ntwtrantypenarr varchar(128) not null ,
    tabname char(18)
  );

