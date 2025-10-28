drop table if exists "informix".sp_chg_detail ;
create table "informix".sp_chg_detail 
  (
    sp_chg_dtl_ref serial not null ,
    sp_cn_chg_ref integer,
    fin_invdtl_ref integer not null ,
    period integer not null ,
    cycle_code char(2) 
        default 'CM' not null ,
    from_dt datetime year to second,
    to_dt datetime year to second,
    reversal char(1) 
        default 'N',
    narr_override2 varchar(32),
    rtl_non_disc_ex decimal(18,10) not null ,
    rtl_non_disc_tax decimal(18,10) not null ,
    rtl_disc_ex decimal(18,10) not null ,
    rtl_disc_tax decimal(18,10) not null ,
    chg_status smallint 
        default 0 not null ,
    cost_ex decimal(18,10),
    cost_tax decimal(18,10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reversal IN ('Y' ,'N' )) constraint "informix".yes_no
  );

