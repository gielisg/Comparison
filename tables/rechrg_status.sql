drop table if exists "informix".rechrg_status ;
create table "informix".rechrg_status 
  (
    rechrg_status_id serial not null ,
    rechrg_stat_narr varchar(32) not null ,
    sys_status char(1),
    bus_unit_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

