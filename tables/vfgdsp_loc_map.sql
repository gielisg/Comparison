drop table if exists "informix".vfgdsp_loc_map ;
create table "informix".vfgdsp_loc_map 
  (
    vfgdsp_lm_ref serial not null ,
    pkg_code integer,
    tar_class_code smallint,
    target_option integer,
    wefr datetime year to second,
    weto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

