drop table if exists "informix".tariff ;
create table "informix".tariff 
  (
    tariff_num serial not null ,
    plan_code smallint not null ,
    plan_ser_num integer not null ,
    timebandcode char(4) not null ,
    connect_price decimal(18,10) not null ,
    band1_rate decimal(18,10) not null ,
    band1_rateunit decimal(20,10) not null ,
    band1_size decimal(20,10),
    band2_rate decimal(18,10),
    band2_rateunit decimal(20,10),
    band2_size decimal(20,10),
    band3_rate decimal(18,10),
    band3_rateunit decimal(20,10),
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
    nt_cost_comp decimal(15,7) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (((cap_max_durn IS NOT NULL ) AND (cap_amnt IS NOT NULL ) ) OR (cap_max_durn IS NULL ) 
              ) constraint "informix".cap_max_either_or2,
    
    check (cap_type IN ('O' ,'R' )) constraint "informix".cap_type,
    
    check (band1_rateunit >= 1. ) constraint "informix".greater_eq221,
    
    check (band2_rateunit >= 1. ) constraint "informix".greater_eq222,
    
    check (band3_rateunit >= 1. ) constraint "informix".greater_eq223,
    
    check (band4_rateunit >= 1. ) constraint "informix".greater_eq224,
    
    check (use_final_band IN ('Y' ,'N' )) constraint "informix".yes_no
  );

