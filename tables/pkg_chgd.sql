drop table if exists "informix".pkg_chgd ;
create table "informix".pkg_chgd 
  (
    pkg_chg_num integer not null ,
    mth_since_plan smallint 
        default 0 not null ,
    chg_amount decimal(18,10) not null ,
    nt_cost_comp decimal(15,7) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (mth_since_plan >= 0 ) constraint "informix".greater_eq_0213
  );

