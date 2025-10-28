drop table if exists "informix".billrunlog ;
create table "informix".billrunlog 
  (
    billrunlogref serial not null ,
    billrunref integer not null ,
    billstepref integer,
    logseq integer not null ,
    logtype integer not null ,
    logdt datetime year to second 
        default current year to second,
    logmsg varchar(255),
    logmsgordr integer
  );

