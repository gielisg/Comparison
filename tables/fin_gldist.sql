drop table if exists "informix".fin_gldist ;
create table "informix".fin_gldist 
  (
    fin_gldist_ref serial not null ,
    gl_acctcode varchar(45) not null ,
    gl_period char(6) not null ,
    fin_ref integer not null ,
    dist_amnt decimal(12,2) not null ,
    adj_dist_amnt decimal(16,2) 
        default 0.00,
    adj_daily_rate decimal(16,2) 
        default 0.00,
    tax_amnt decimal(12,2),
    from_dt date not null ,
    to_dt date not null ,
    sign char(1) not null ,
    comment varchar(254),
    exp_last_to date,
    sp_cn_ref integer,
    bus_unit_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sign IN ('C' ,'D' )) constraint "informix".check
    
    check (from_dt <= to_dt ) constraint "informix".from_to
  );

