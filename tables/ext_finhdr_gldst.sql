drop table if exists "informix".ext_finhdr_gldst ;
create table "informix".ext_finhdr_gldst 
  (
    extfin_gldst_ref serial not null ,
    ext_fin_ref integer not null ,
    dist_amnt decimal(12,2) not null ,
    sign char(1) not null ,
    gl_acctcode varchar(45) not null ,
    from_dt date not null ,
    to_dt date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sign IN ('C' ,'D' )) constraint "informix".check
    
    check (from_dt <= to_dt ) constraint "informix".from_to23
  );

