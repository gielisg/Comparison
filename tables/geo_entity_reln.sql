drop table if exists "informix".geo_entity_reln ;
create table "informix".geo_entity_reln 
  (
    geo_ent_relnid serial not null ,
    prnt_entity_ref integer not null ,
    chld_entity_ref integer not null ,
    reln_wefr date not null ,
    reln_weto date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

