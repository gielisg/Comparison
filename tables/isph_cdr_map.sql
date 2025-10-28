drop table if exists "informix".isph_cdr_map ;
create table "informix".isph_cdr_map 
  (
    isph_map_ref serial not null ,
    call_type varchar(100) not null ,
    on_net varchar(60) 
        default 'N' not null ,
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

