drop table if exists "informix".activity_log ;
create table "informix".activity_log 
  (
    activity_log_id serial not null ,
    userid char(10) not null ,
    entity_key varchar(80,10) not null ,
    dt datetime year to second 
        default current year to second not null ,
    persistence_level smallint 
        default 1 not null ,
    json lvarchar(1000)
  );

