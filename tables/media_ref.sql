drop table if exists "informix".media_ref ;
create table "informix".media_ref 
  (
    media_ref char(10) not null ,
    media_code char(4) not null ,
    image_location varchar(200)
  );

