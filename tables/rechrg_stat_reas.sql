drop table if exists "informix".rechrg_stat_reas ;
create table "informix".rechrg_stat_reas 
  (
    rechrg_reason_id serial not null ,
    rechrg_reas_narr varchar(32),
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

