drop table if exists "informix".vas_status ;
create table "informix".vas_status 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

