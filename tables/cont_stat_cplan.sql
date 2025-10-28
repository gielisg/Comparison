drop table if exists "informix".cont_stat_cplan ;
create table "informix".cont_stat_cplan 
  (
    contstat_cpl_ref serial not null ,
    bus_unit_code char(2) not null ,
    cont_status char(3) not null ,
    plan_code char(5) not null ,
    statplan_wefr datetime year to second not null ,
    statplan_weto datetime year to second not null 
  );

