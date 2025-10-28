drop table if exists "informix".gs_plygn_max ;
create table "informix".gs_plygn_max 
  (
    lac integer not null ,
    minlat integer not null ,
    maxlat integer not null ,
    minlong integer not null ,
    maxlong integer not null 
  );

