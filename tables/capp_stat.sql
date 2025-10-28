drop table if exists "informix".capp_stat ;
create table "informix".capp_stat 
  (
    status_id integer not null ,
    status_narr varchar(32)
  );

