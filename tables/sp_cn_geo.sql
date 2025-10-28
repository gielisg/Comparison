drop table if exists "informix".sp_cn_geo ;
create table "informix".sp_cn_geo 
  (
    spcn_geo_ref serial not null ,
    geo_entity_ref integer not null ,
    sp_cn_ref integer not null ,
    sp_plan_ref integer,
    locked char(1) 
        default 'N' not null ,
    assigned_fr date 
        default today not null ,
    assigned_to date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (assigned_to >= assigned_fr ) constraint "informix".chk_assign_dt
  );

