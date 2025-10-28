drop table if exists "informix".gs_plygn_lines ;
create table "informix".gs_plygn_lines 
  (
    lac integer not null ,
    slat integer not null ,
    slong integer not null ,
    elat integer not null ,
    elong integer not null 
  );

