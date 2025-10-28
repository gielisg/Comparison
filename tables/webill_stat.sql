drop table if exists "informix".webill_stat ;
create table "informix".webill_stat 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

