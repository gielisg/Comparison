drop table if exists "informix".st_mobama_map ;
create table "informix".st_mobama_map 
  (
    mobama_map_ref serial not null ,
    charge_ind char(1) not null ,
    call_direction char(1),
    bparty_prefix varchar(24),
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

