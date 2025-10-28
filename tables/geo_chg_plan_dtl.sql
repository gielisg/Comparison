drop table if exists "informix".geo_chg_plan_dtl ;
create table "informix".geo_chg_plan_dtl 
  (
    geo_chg_plan_ref serial not null ,
    geo_chg_tran_ref integer,
    debtor_code char(10) not null ,
    sp_cn_ref integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    spcn_geo_ref integer not null ,
    geo_entity_ref integer not null ,
    geo_chg_plan_wef date not null ,
    geo_chg_plan_wet date not null ,
    geo_chg_plan_new char(1) not null ,
    geo_chg_plan_trm char(1) 
        default 'N' not null ,
    geo_chg_plan_amt decimal(12,6) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (geo_chg_plan_new IN ('Y' ,'N' )) constraint "informix".yes_no
  );

