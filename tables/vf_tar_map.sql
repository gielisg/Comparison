drop table if exists "informix".vf_tar_map ;
create table "informix".vf_tar_map 
  (
    vf_map_ref serial not null ,
    vf_tarclasscode char(18) not null ,
    nt_cl_svin char(6) not null ,
    bparty_prefix varchar(16),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

