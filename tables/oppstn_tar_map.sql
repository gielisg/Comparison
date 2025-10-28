drop table if exists "informix".oppstn_tar_map ;
create table "informix".oppstn_tar_map 
  (
    oppstn_map_ref serial not null ,
    type_id_usg integer not null ,
    jurisdiction integer 
        default 999999999 not null ,
    prov_id integer 
        default 999999999 not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    bparty_prefix varchar(24),
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

