drop table if exists "informix".srvcelemexcl ;
create table "informix".srvcelemexcl 
  (
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    srvcelemtypecd char(3) not null ,
    exsrvctypecode char(4) not null ,
    exnetwork_id char(2) not null ,
    exsrvcelemtypecd char(3) not null 
  );

