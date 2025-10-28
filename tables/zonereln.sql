drop table if exists "informix".zonereln ;
create table "informix".zonereln 
  (
    zonerelnid serial not null ,
    zonerltpid integer not null ,
    zoneidfrom integer not null ,
    zoneidto integer not null 
  );

