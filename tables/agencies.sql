drop table if exists "informix".agencies ;
create table "informix".agencies 
  (
    agency_id char(2) not null ,
    agency_narr varchar(32) not null 
  );

