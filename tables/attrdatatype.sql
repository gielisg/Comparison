drop table if exists "informix".attrdatatype ;
create table "informix".attrdatatype 
  (
    attrdatatype integer not null ,
    description varchar(32,1) not null 
  );

