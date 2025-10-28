drop table if exists "informix".vfgdsp_ev_proc ;
create table "informix".vfgdsp_ev_proc 
  (
    vfgdsp_ev_ref integer not null ,
    imsi varchar(64) not null ,
    actioned_dt datetime year to second 
        default current year to second not null ,
    change_dt datetime year to second not null 
  );

