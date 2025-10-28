drop table if exists "informix".aspnetrole ;
create table "informix".aspnetrole 
  (
    id serial not null ,
    name varchar(254),
    normalizedname varchar(254),
    concurrencystamp lvarchar
  );

