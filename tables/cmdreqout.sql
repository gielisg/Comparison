drop table if exists "informix".cmdreqout ;
create table "informix".cmdreqout 
  (
    cmdreqoutid serial not null ,
    cmdreqid integer not null ,
    outpath varchar(254,32) not null ,
    outdesc varchar(254,32) not null 
  );

