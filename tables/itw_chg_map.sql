drop table if exists "informix".itw_chg_map ;
create table "informix".itw_chg_map 
  (
    bill_type_key varchar(120,12) not null ,
    bill_type_key_desc varchar(200),
    chg_code char(4),
    auto_exclude char(1) 
        default 'N' not null ,
    use_net_price char(1) 
        default 'N' not null ,
    net_prc_prorated char(1) 
        default 'Y' not null ,
    uplift_perc decimal(6,4) 
        default 0.0000 not null ,
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

