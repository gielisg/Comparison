drop table if exists "informix".trf_cfg_dtl ;
create table "informix".trf_cfg_dtl 
  (
    trf_cfg_dtl_ref serial not null ,
    trf_cfg_ref integer not null ,
    srce_tariff_num integer,
    dest_tariff_num integer,
    tar_class_code smallint not null ,
    timebandcode char(4) not null ,
    connect_price decimal(18,10) 
        default 0.0000000000 not null ,
    band1_rate decimal(18,10) 
        default 0.0000000000 not null ,
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
    cap_type char(1) 
        default 'O' not null ,
    nt_cost_comp decimal(15,7),
    min_durn decimal(20,10),
    min_cost decimal(18,10),
    cap_durn decimal(20,10),
    cap_amnt decimal(18,10),
    changed char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cap_type IN ('O' ,'R' )) constraint "informix".cap_type5,
    
    check (band1_rateunit >= 1. ) constraint "informix".greater_eq225,
    
    check (band2_rateunit >= 1. ) constraint "informix".greater_eq226,
    
    check (band3_rateunit >= 1. ) constraint "informix".greater_eq227,
    
    check (band4_rateunit >= 1. ) constraint "informix".greater_eq228,
    
    check (changed IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (use_final_band IN ('Y' ,'N' )) constraint "informix".yes_no
  );

