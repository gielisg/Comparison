drop table if exists "informix".evntatttype ;
create table "informix".evntatttype 
  (
    evntatttypeid serial not null ,
    evntatttypenarr varchar(254) not null ,
    disp_ord integer not null ,
    grplabel varchar(32),
    menu_id integer,
    datatypectrl char(1) not null 
  );

