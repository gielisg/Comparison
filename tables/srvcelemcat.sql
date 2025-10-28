drop table if exists "informix".srvcelemcat ;
create table "informix".srvcelemcat 
  (
    srvcelemcatcd char(3) not null ,
    srvcelemcatnarr varchar(32) not null 
  );

