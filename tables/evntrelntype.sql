drop table if exists "informix".evntrelntype ;
create table "informix".evntrelntype 
  (
    evntrelntypecode char(1) not null ,
    evntrelntypenarr varchar(32)
  );

