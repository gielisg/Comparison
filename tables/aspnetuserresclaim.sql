drop table if exists "informix".aspnetuserresclaim ;
create table "informix".aspnetuserresclaim 
  (
    id serial not null ,
    userid integer not null ,
    resource_id integer not null 
  );

