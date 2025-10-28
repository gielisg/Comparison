drop table if exists "informix".rechrg_type ;
create table "informix".rechrg_type 
  (
    rechrg_type_id serial not null ,
    rechrg_type_narr varchar(254,32) not null ,
    rechrg_cat_id integer not null ,
    dflt_price_inc decimal(16,2) 
        default 0.00,
    dflt_price_tax decimal(16,2),
    default_exp_days smallint 
        default 0,
    shelf_life_days smallint 
        default 0,
    num_days_to_act smallint,
    pkg_code integer,
    option smallint,
    network_plan_id varchar(124),
    network_prd_code varchar(254,32),
    network_stk_code varchar(254,32),
    main_curr_amnt decimal(12,2) 
        default 0.00 not null ,
    allow_var_amnt char(1) 
        default 'N' not null ,
    avail_in_store char(1) 
        default 'N' not null ,
    avail_dealers char(1) 
        default 'N' not null ,
    avail_mvnos char(1) 
        default 'N' not null ,
    avail_online char(1) 
        default 'N' not null ,
    avail_new_cust char(1) 
        default 'N' not null ,
    display_order integer 
        default 1 not null ,
    note text,
    image "informix".blob,
    start_date date not null ,
    end_date date not null ,
    bus_unit_code char(2),
    trigger_pkg_chng char(1) 
        default 'N' not null ,
    allow_sched_rchg char(1) 
        default 'N' not null ,
    lowbal_auto_rchg char(1) 
        default 'N' not null ,
    lowbal_threshold decimal(16,3) 
        default 0.000,
    auto_renew char(1) 
        default 'N' not null ,
    avail_rtom char(1) 
        default 'Y',
    throttling_plan smallint 
        default 0 not null ,
    tp_period_ut_band1 integer,
    tp_periods_band1 integer,
    tp_period_ut_band2 integer,
    tp_periods_band2 integer,
    rollover_allowed char(1) 
        default 'N' not null ,
    rollover_period_ut integer,
    rollover_periods integer,
    activation_type integer 
        default 0 not null ,
    effect_date_type integer 
        default 0 not null ,
    stack_limit integer 
        default 0 not null ,
    rechrg_number_cap char(1) 
        default 'N' not null ,
    rnc_period_type integer,
    rnc_periods integer,
    expiry_types integer 
        default 0 not null ,
    expiry_periods integer not null ,
    chg_code char(4),
    class varchar(10) 
        default 'Primary' not null ,
    disp_order smallint 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (throttling_plan IN (0 ,1 ,2 )) constraint "informix".c0_1_22,
    
    check (default_exp_days >= 0 ) constraint "informix".greater_eq533,
    
    check (shelf_life_days >= 0 ) constraint "informix".greater_eq534,
    
    check (tp_period_ut_band1 >= 0 ) constraint "informix".greater_eq_0106,
    
    check (tp_period_ut_band2 >= 0 ) constraint "informix".greater_eq_0107,
    
    check (rollover_period_ut >= 0 ) constraint "informix".greater_eq_0108,
    
    check (activation_type >= 0 ) constraint "informix".greater_eq_0109,
    
    check (effect_date_type >= 0 ) constraint "informix".greater_eq_0110,
    
    check (stack_limit >= 0 ) constraint "informix".greater_eq_0111,
    
    check (rnc_period_type >= 0 ) constraint "informix".greater_eq_0112,
    
    check (rnc_periods >= 0 ) constraint "informix".greater_eq_0113,
    
    check (expiry_types >= 0 ) constraint "informix".greater_eq_0114,
    
    check (dflt_price_inc >= 0. ) constraint "informix".greater_eq_024,
    
    check (tp_periods_band1 > 0 ) constraint "informix".greater_than_018,
    
    check (tp_periods_band2 > 0 ) constraint "informix".greater_than_019,
    
    check (rollover_periods > 0 ) constraint "informix".greater_than_020,
    
    check (expiry_periods > 0 ) constraint "informix".greater_than_021,
    
    check (class IN ('Primary' ,'BoltOn' )) constraint "informix".rechrg_class,
    
    check (avail_rtom IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (avail_in_store IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (avail_dealers IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (avail_mvnos IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (avail_online IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (avail_new_cust IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_var_amnt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (trigger_pkg_chng IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_sched_rchg IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (lowbal_auto_rchg IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (rollover_allowed IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (rechrg_number_cap IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (auto_renew IN ('Y' ,'N' ,'F' )) constraint "informix".ynf
  );

