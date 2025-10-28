drop table if exists "informix".srvcelemtype ;
create table "informix".srvcelemtype 
  (
    srvcelemtypecd char(3) not null ,
    srvcelemtypenarr varchar(32) not null 
  );

