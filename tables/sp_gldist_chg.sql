drop table if exists "informix".sp_gldist_chg ;
create table "informix".sp_gldist_chg 
  (
    sp_gldistchg_ref serial not null ,
    fin_gldist_ref integer,
    sp_chg_dtl_ref integer,
    dist_amnt decimal(12,2),
    sign char(1) not null ,
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

