drop table if exists "informix".pro_media_types ;
create table "informix".pro_media_types 
  (
    type_id char(2) not null ,
    type_narr varchar(32) not null 
  );

