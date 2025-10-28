drop table if exists "informix".cont_status ;
create table "informix".cont_status 
  (
    cont_status char(3) not null ,
    cont_stat_narr varchar(32) not null ,
    cont_stat_order integer not null ,
    cont_stat_dflt char(1) not null ,
    disp_online char(1) 
        default 'Y' not null ,
    disp_report char(1) 
        default 'Y' not null ,
    return_reason char(2),
    sys_status char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (disp_online IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (disp_report IN ('Y' ,'N' )) constraint "informix".yes_no
  );

