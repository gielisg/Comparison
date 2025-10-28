drop table if exists "informix".media_code ;
create table "informix".media_code 
  (
    media_code char(4) not null ,
    media_narr varchar(32) not null 
  );

