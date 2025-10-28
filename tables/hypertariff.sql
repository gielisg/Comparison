drop table if exists "informix".hypertariff ;
create table "informix".hypertariff 
  (
    plan_ser_num integer not null ,
    plan_code smallint not null ,
    start_date date not null ,
    end_date date not null ,
    tariff_num integer not null ,
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
    tar_class_code smallint not null ,
    ntcltyperndprec integer not null ,
    ntcltyperndmeth char(1) not null ,
    hasoverrides char(1) 
        default 'N' not null ,
    max_last_updated datetime year to second not null ,
    populated datetime year to second not null ,
    
    check (cap_type IN ('O' ,'R' )) constraint "informix".cap_type2,
    
    check (band4_rateunit >= 1. ) constraint "informix".greater_eq217,
    
    check (use_final_band IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (hasoverrides IN ('Y' ,'N' ,'X' )) constraint "informix".yes_no
  );

