drop table if exists "informix".ebill_rectype ;
create table "informix".ebill_rectype 
  (
    recordtype char(2) not null ,
    recordtypenarr varchar(128) not null 
  );

