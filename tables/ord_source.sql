drop table if exists "informix".ord_source ;
create table "informix".ord_source 
  (
    source_id integer not null ,
    source_narr varchar(32) not null 
  );

