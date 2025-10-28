drop table if exists "informix".planoverride ;
create table "informix".planoverride 
  (
    planoverrideid serial not null ,
    debtor_code char(10) not null ,
    sp_cn_ref integer,
    plan_code smallint not null ,
    tar_class_code smallint not null ,
    timebandcode char(4) not null ,
    planoverridewefr date not null ,
    planoverrideweto date not null ,
    connect_price decimal(18,10) 
        default 0.0000000000 not null ,
    band1_rate decimal(18,10) not null ,
    band1_rateunit decimal(20,10) 
        default 1.0000000000 not null ,
    band1_size decimal(20,10),
    band2_rate decimal(18,10),
    band2_rateunit decimal(20,10) 
        default 1.0000000000,
    band2_size decimal(20,10),
    band3_rate decimal(18,10),
    band3_rateunit decimal(20,10) 
        default 1.0000000000,
    band3_size decimal(20,10),
    band4_rate decimal(18,10),
    band4_rateunit decimal(20,10),
    use_final_band char(1) 
        default 'N' not null ,
    min_durn decimal(20,10),
    min_cost decimal(18,10),
    cap_amnt decimal(18,10),
    cap_max_durn decimal(20,10),
    cap_type char(1) 
        default 'O' not null ,
    nt_cost_comp decimal(15,7) 
        default 0.0000000 not null ,
    pkg_code integer,
    option smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (((cap_max_durn IS NOT NULL ) AND (cap_amnt IS NOT NULL ) ) OR (cap_max_durn IS NULL ) 
              ) constraint "informix".cap_max_either_o12,
    
    check (cap_type IN ('O' ,'R' )) constraint "informix".cap_type3,
    
    check (band2_rateunit >= 1. ) constraint "informix".greater_eq218,
    
    check (band3_rateunit >= 1. ) constraint "informix".greater_eq219,
    
    check (band4_rateunit >= 1. ) constraint "informix".greater_eq220,
    
    check (band1_rateunit >= 0. ) constraint "informix".greater_eq589,
    
    check (use_final_band IN ('Y' ,'N' )) constraint "informix".yes_no
  );

