drop table if exists "informix".ident_sched ;
create table "informix".ident_sched 
  (
    ntwkidentid integer not null ,
    ident_start_dt datetime year to second not null ,
    event_ref integer not null 
  );

