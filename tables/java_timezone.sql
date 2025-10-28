drop table if exists "informix".java_timezone ;
create table "informix".java_timezone 
  (
    timezone char(40) not null ,
    regioncd char(3) not null ,
    timezone_narr varchar(50,10) not null ,
    utcofst integer not null 
  );

