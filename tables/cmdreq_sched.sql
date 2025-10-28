drop table if exists "informix".cmdreq_sched ;
create table "informix".cmdreq_sched 
  (
    cmdreqid integer not null ,
    schedreqid integer not null 
  );

