drop table if exists "informix".sim_usage ;
create table "informix".sim_usage 
  (
    sim_id integer not null ,
    nt_cn_ref integer not null ,
    sim_link_start datetime year to second not null ,
    phone_num varchar(64),
    nt_connected datetime year to second not null ,
    sim_link_end datetime year to second not null ,
    sp_cn_ref integer,
    sim_status char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sim_status IN ('L' ,'E' ,'P' )) constraint "informix".sim_status25
  );

