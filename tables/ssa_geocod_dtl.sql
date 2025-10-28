drop table if exists "informix".ssa_geocod_dtl ;
create table "informix".ssa_geocod_dtl 
  (
    ssa_samid integer not null ,
    event_ref integer not null ,
    ssa_rec_num serial not null ,
    ssa_zone varchar(64),
    ssa_density varchar(64),
    ssa_urbanisation varchar(64)
  );

