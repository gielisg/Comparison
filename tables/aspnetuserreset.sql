drop table if exists "informix".aspnetuserreset ;
create table "informix".aspnetuserreset 
  (
    id serial not null ,
    contact_code char(10) not null ,
    userid integer not null ,
    username varchar(254) not null ,
    normalizedusername varchar(254) not null 
  );

