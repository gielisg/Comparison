drop table if exists "informix".fin_gldist_exp ;
create table "informix".fin_gldist_exp 
  (
    exp_ref serial not null ,
    fin_gldist_ref integer,
    exp_date date not null ,
    exp_amount decimal(16,4),
    tax_amount decimal(12,2),
    from_dt date not null ,
    to_dt date not null ,
    sign char(1) not null ,
    gl_acctcode varchar(45),
    gl_period char(6) not null ,
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
  );

