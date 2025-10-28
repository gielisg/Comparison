drop table if exists "informix".inbnd_call_stat ;
create table "informix".inbnd_call_stat 
  (
    call_status smallint not null ,
    status_narr varchar(32) not null 
  );

