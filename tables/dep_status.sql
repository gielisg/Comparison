drop table if exists "informix".dep_status ;
create table "informix".dep_status 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

