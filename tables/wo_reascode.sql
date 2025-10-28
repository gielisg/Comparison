drop table if exists "informix".wo_reascode ;
create table "informix".wo_reascode 
  (
    wo_reascode char(4) not null ,
    wo_reasnarr varchar(32) not null ,
    wo_reas_enabled char(1) 
        default 'Y' not null ,
    wo_reas_system char(1) 
        default 'Y' not null ,
    disp_order smallint 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (wo_reas_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (wo_reas_system IN ('Y' ,'N' )) constraint "informix".yes_no
  );

