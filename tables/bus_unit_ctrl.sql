drop table if exists "informix".bus_unit_ctrl ;
create table "informix".bus_unit_ctrl 
  (
    ctrl_type varchar(254,20) not null ,
    bus_unit_code char(2) not null ,
    ctrl_obj_id integer not null ,
    include_exclude char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (include_exclude IN ('I' ,'E' )) constraint "informix".incl_excl4
  );

