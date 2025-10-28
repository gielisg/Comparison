drop table if exists "informix".aspnetapikey ;
create table "informix".aspnetapikey 
  (
    id serial not null ,
    userid integer not null ,
    name varchar(254),
    utcbefore datetime year to second,
    securitystamp char(32)
  );

