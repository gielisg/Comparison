drop table if exists "informix".rch_instelm_evnt ;
create table "informix".rch_instelm_evnt 
  (
    rch_iele_evnt_id serial not null ,
    rechrg_id integer not null ,
    element_id integer not null ,
    event_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

