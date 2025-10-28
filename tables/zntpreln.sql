drop table if exists "informix".zntpreln ;
create table "informix".zntpreln 
  (
    zntprelnid integer not null ,
    zonetypefrom integer,
    zonetypeto integer
  );

