drop table if exists "informix".geo_chg_cnfg ;
create table "informix".geo_chg_cnfg 
  (
    geo_chg_cnfg_ref serial not null ,
    geo_chg_hdr_narr varchar(32) not null ,
    geo_chg_type_cd char(4) not null ,
    pkg_code integer not null ,
    geo_chg_option integer,
    plan_code smallint,
    chg_code char(4) not null ,
    use_geo_type_cd char(1) not null ,
    geo_chg_hdr_wefr date not null ,
    geo_chg_hdr_weto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (geo_chg_type_cd IN ('PLAN' ,'ZONE' )) constraint "informix".geochg_typecd4,
    
    check (use_geo_type_cd IN ('Y' ,'N' )) constraint "informix".yes_no
  );

