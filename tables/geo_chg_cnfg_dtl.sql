drop table if exists "informix".geo_chg_cnfg_dtl ;
create table "informix".geo_chg_cnfg_dtl 
  (
    geo_cnfg_dtl_ref serial not null ,
    geo_chg_cnfg_ref integer not null ,
    geo_entity_ref integer not null ,
    geo_type_code char(2),
    geo_chg_dtl_wefr date not null ,
    geo_chg_dtl_weto date not null ,
    geo_chg_bnd_lowr integer not null ,
    geo_chg_bnd_uppr integer not null ,
    geo_chg_fixd_chg decimal(12,6) not null ,
    geo_chg_unit_chg decimal(12,6) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

