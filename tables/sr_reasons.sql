drop table if exists "informix".sr_reasons ;
create table "informix".sr_reasons 
  (
    reason_id integer not null ,
    reason_narr varchar(32) not null 
  );

