drop table if exists "informix".relntype ;
create table "informix".relntype 
  (
    relntypeid char(2) not null ,
    relntypenarr varchar(32) not null 
  );

