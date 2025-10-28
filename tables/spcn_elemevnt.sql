drop table if exists "informix".spcn_elemevnt ;
create table "informix".spcn_elemevnt 
  (
    spcn_srvcelemid integer not null ,
    event_ref integer not null 
  );

