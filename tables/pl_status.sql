drop table if exists "informix".pl_status ;
create table "informix".pl_status 
  (
    status_id smallint not null ,
    status_narr char(32) not null 
  );

