drop table if exists "informix".ssa_hdr ;
create table "informix".ssa_hdr 
  (
    ssa_samid integer not null ,
    event_ref integer not null ,
    ssa_asid integer,
    ssa_address varchar(254),
    ssa_req_date date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

