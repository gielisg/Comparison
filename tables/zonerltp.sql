drop table if exists "informix".zonerltp ;
create table "informix".zonerltp 
  (
    zonerltpid serial not null ,
    zonerltpnarr varchar(32)
  );

