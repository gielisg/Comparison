drop table if exists "informix".aspnetusertoken ;
create table "informix".aspnetusertoken 
  (
    userid integer not null ,
    loginprovider varchar(128) not null ,
    name varchar(128) not null ,
    value lvarchar(2304)
  );

