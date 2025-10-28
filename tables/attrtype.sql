drop table if exists "informix".attrtype ;
create table "informix".attrtype 
  (
    attrtype integer not null ,
    description varchar(32,1) not null 
  );

