drop table if exists "informix".aspnetroleresclaim ;
create table "informix".aspnetroleresclaim 
  (
    id serial not null ,
    roleid integer not null ,
    resource_id integer not null 
  );

