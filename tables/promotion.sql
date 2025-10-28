drop table if exists "informix".promotion ;
create table "informix".promotion 
  (
    pro_code char(5) not null ,
    pro_med_code integer not null ,
    pro_narr varchar(32) not null ,
    pro_start_date date not null ,
    pro_exp_date date not null ,
    telesales char(1) 
        default 'Y' not null ,
    www char(1) 
        default 'Y' not null ,
    dealers char(1) 
        default 'Y' not null ,
    image_file varchar(254),
    priority smallint,
    status_id smallint,
    bus_unit_code char(2),
    ad_deadline date,
    ad_type_id char(2),
    ad_position_id char(2),
    est_cost decimal(10,2),
    int_comp_costs decimal(10,2),
    post_costs decimal(10,2),
    print_costs decimal(10,2),
    production_costs decimal(10,2),
    media_agencies char(2),
    media_costs decimal(10,2) 
        default 0.00 not null ,
    creative_agencies char(2),
    creative_costs decimal(10,2) 
        default 0.00 not null ,
    other_costs decimal(10,2),
    joint_promo char(1),
    ext_comp_com decimal(10,2),
    manu_subsidy decimal(10,2),
    est_circulation integer,
    sales_forecast integer,
    remarks varchar(254),
    
    check (status_id IN (1 ,2 )) constraint "informix".one_221,
    
    check (dealers IN ('Y' ,'N' )) constraint "informix".yes_no
  );

