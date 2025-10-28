drop table if exists "informix".dsr_pack_map ;
create table "informix".dsr_pack_map 
  (
    dsr_plan_ref serial not null ,
    dsr_plan_narr varchar(64),
    pkg_code integer,
    map_wefr date,
    map_weto date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

