drop table if exists "informix".nonpkg_chg ;
create table "informix".nonpkg_chg 
  (
    nonpkg_chg_ref serial not null ,
    chg_code char(4) not null ,
    srvctypecode char(4) 
        default 'GSM' not null ,
    start_date date not null ,
    end_date date not null ,
    chg_amount decimal(18,10) 
        default 0.0000000000 not null ,
    chg_warnmin decimal(18,10) 
        default 0.0000000000 not null ,
    chg_warnmax decimal(18,10) 
        default 1000.0000000000 not null ,
    chg_err_min decimal(18,10) 
        default -1000.0000000000 not null ,
    chg_err_max decimal(18,10) 
        default 10000.0000000000 not null ,
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
    visible char(1) 
        default 'Y' not null ,
    nt_cost_comp decimal(15,7) not null ,
    
    check (end_date >= start_date ) constraint "informix".chk_vas_chg18,
    
    check (cost_calc_type IN ('F' ,'P' )) constraint "informix".fixed_or_percenta4,
    
    check (visible IN ('Y' ,'N' )) constraint "informix".yes_no
  );

