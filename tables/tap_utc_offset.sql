drop table if exists "informix".tap_utc_offset ;
create table "informix".tap_utc_offset 
  (
    utc_timeofstcode smallint not null ,
    utc_timeofst char(5) not null 
  );

