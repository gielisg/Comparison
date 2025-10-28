drop table if exists "informix".fin_gldist_hist ;
create table "informix".fin_gldist_hist 
  (
    fingldisthistref serial not null ,
    gl_acctcode varchar(45) not null ,
    gl_period char(6) not null ,
    dist_amnt decimal(12,2) not null ,
    adj_dist_amnt decimal(16,2) 
        default 0.00,
    from_dt date not null ,
    to_dt date not null ,
    sign char(1),
    contact_code char(10) not null ,
    fin_type_code char(2) not null ,
    fin_num char(10) not null ,
    fin_date date not null ,
    fin_hdr_del_tm datetime year to second 
        default current year to second not null ,
    exported char(1) 
        default 'N' not null ,
    comment varchar(254),
    exp_last_to date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sign IN ('C' ,'D' )) constraint "informix".check
    
    check (from_dt <= to_dt ) constraint "informix".from_to2,
    
    check (exported IN ('Y' ,'N' )) constraint "informix".yes_no
  );

