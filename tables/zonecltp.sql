drop table if exists "informix".zonecltp ;
create table "informix".zonecltp 
  (
    tar_class_code smallint not null ,
    zonerelnid integer not null ,
    zonecltpwefd datetime year to second not null ,
    zonecltpwetd datetime year to second
  );

