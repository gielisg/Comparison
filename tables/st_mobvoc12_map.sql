drop table if exists "informix".st_mobvoc12_map ;
create table "informix".st_mobvoc12_map 
  (
    mobvoc12_map_ref serial not null ,
    exchange_code char(2) not null ,
    vpg12_roam_svc_ind char(1) not null ,
    vpg12_direct_code char(1) not null ,
    vpg12_svc_type char(2) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

