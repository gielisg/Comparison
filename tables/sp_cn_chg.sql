drop table if exists "informix".sp_cn_chg ;
create table "informix".sp_cn_chg 
  (
    sp_cn_chg_ref serial not null ,
    prnt_chg_ref integer,
    sp_cn_ref integer not null ,
    sp_plan_ref integer,
    chg_code char(4) not null ,
    start_date datetime year to second not null ,
    end_date datetime year to second not null ,
    ann_date datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    frequency char(1) not null ,
    chg_in_advance char(1) not null ,
    advance_periods integer 
        default 1 not null ,
    prorata char(1) not null ,
    unit char(10),
    unitquantity decimal(20,10) 
        default 1.0000000000 not null ,
    unitrate decimal(18,10),
    unitdiscamnt decimal(18,10) 
        default 0.0000000000 not null ,
    unitdiscperc decimal(5,2) 
        default 0.00 not null ,
    default_amount decimal(18,10) not null ,
    narr_override1 varchar(254),
    bill_narr varchar(254),
    last_to_dt datetime year to second,
    cost_ex decimal(18,10),
    gl_acctcode varchar(45),
    oth_ref varchar(255),
    cust_ref varchar(254),
    sp_ref varchar(254),
    etf char(1) 
        default 'N',
    pkgchangefeesid integer,
    note varchar(254),
    created_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18) 
        default user not null ,
    last_edited datetime year to second 
        default current year to second not null ,
    edited_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (frequency IN ('D' ,'W' ,'M' ,'I' ,'Y' ,'N' ,'Q' ,'H' ,'B' ,'2' ,'S' ,'3' ,'5' )) 
              constraint "informix".freq_dwmiynq58,
    
    check ((unitdiscperc >= 0. ) AND (unitdiscperc <= 100. ) ) constraint "informix".percent,
    
    check ((unitdiscperc >= 0. ) AND (unitdiscperc <= 100. ) ) constraint "informix".percent5,
    
    check (etf IN ('Y' ,'N' )) constraint "informix".yes_no
  );

