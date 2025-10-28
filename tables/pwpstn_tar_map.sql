drop table if exists "informix".pwpstn_tar_map ;
create table "informix".pwpstn_tar_map 
  (
    pwpstn_map_ref serial not null ,
    usage_type integer not null ,
    product_id integer 
        default 999999999 not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    jurisdiction integer,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

