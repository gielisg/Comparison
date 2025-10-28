drop table if exists "informix".isp_chg_map ;
create table "informix".isp_chg_map 
  (
    ispchg_tp_ref serial not null ,
    description varchar(255) not null ,
    chg_code char(4) not null ,
    auto_exclude char(1) 
        default 'N' not null ,
    use_net_price char(1) 
        default 'N' not null ,
    net_prc_prorated char(1) 
        default 'Y' not null ,
    uplift_perc decimal(10,6) 
        default 0.000000 not null ,
    uplift_amt decimal(10,4),
    use_net_desc char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (auto_exclude IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (use_net_price IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (use_net_desc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

