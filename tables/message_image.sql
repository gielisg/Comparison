drop table if exists "informix".message_image ;
create table "informix".message_image 
  (
    msgid integer not null ,
    imageid integer not null 
  );

