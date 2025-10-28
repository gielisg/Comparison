drop table if exists "informix".ssa_svcaud_dtl ;
create table "informix".ssa_svcaud_dtl 
  (
    ssa_samid integer not null ,
    event_ref integer not null ,
    ssa_rec_num serial not null ,
    ssa_line_type varchar(64),
    ssa_service_id varchar(64),
    ssa_open_so char(1) 
        default 'N' not null ,
    ssa_switch varchar(64),
    ssa_dir_listing varchar(64),
    
    check (ssa_open_so IN ('Y' ,'N' )) constraint "informix".yes_no
  );

