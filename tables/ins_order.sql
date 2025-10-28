drop table if exists "informix".ins_order ;
create table "informix".ins_order 
  (
    ins_order_id serial not null ,
    master_policy_id integer not null ,
    event_ref integer,
    ins_status_id integer not null ,
    ins_cover_wef datetime year to second,
    ins_cover_wet datetime year to second,
    ins_source_id integer,
    ins_order_agnt char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

