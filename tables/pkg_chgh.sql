drop table if exists "informix".pkg_chgh ;
create table "informix".pkg_chgh 
  (
    pkg_chg_num serial not null ,
    pkg_code integer not null ,
    option smallint 
        default 0 not null ,
    chg_code char(4) not null ,
    start_date date not null ,
    end_date date not null ,
    chgintvstrt integer,
    chgintvsrnd char(1) 
        default 'N' not null ,
    chgintvend integer,
    chgintvernd char(1) 
        default 'Y' not null ,
    chgintvunit char(1) 
        default 'M' not null ,
    auto_apply char(1) 
        default 'Y' not null ,
    cost_calc_type char(1),
    cost_ex decimal(18,10),
    cost_calc_pcent smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (chgintvunit IN ('D' ,'M' )) constraint "informix".discintv30,
    
    check (cost_calc_type IN ('F' ,'P' )) constraint "informix".fixed_or_percenta3,
    
    check (chgintvsrnd IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (chgintvernd IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (auto_apply IN ('Y' ,'N' ,'M' )) constraint "informix".ynm3
  );

