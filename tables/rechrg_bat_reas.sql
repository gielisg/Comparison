drop table if exists "informix".rechrg_bat_reas ;
create table "informix".rechrg_bat_reas 
  (
    rchbat_reason_id serial not null ,
    rchbat_reas_narr varchar(32) not null ,
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

