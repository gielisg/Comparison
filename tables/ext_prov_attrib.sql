drop table if exists "informix".ext_prov_attrib ;
create table "informix".ext_prov_attrib 
  (
    ext_provider_id integer not null ,
    key_id integer not null ,
    bus_unit_code char(2) not null ,
    attrib_value varchar(254,20) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

