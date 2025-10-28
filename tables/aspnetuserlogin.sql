drop table if exists "informix".aspnetuserlogin ;
create table "informix".aspnetuserlogin 
  (
    loginprovider varchar(128) not null ,
    providerkey varchar(128) not null ,
    providerdispname varchar(128),
    userid integer not null 
  );

