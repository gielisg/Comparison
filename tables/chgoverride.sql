drop table if exists "informix".chgoverride ;
create table "informix".chgoverride 
  (
    chgoverrideid serial not null ,
    sp_cn_ref integer,
    debtor_code char(10) not null ,
    pkg_code integer,
    option smallint,
    chg_code char(4) not null ,
    chgoverridewefr datetime year to second 
        default current year to second not null ,
    chgoverrideweto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    chg_amount decimal(18,10) not null ,
    nt_cost_comp decimal(15,7) not null ,
    chgoverridebnarr varchar(32),
    type char(24) 
        default 'ACCOUNT' not null ,
    terminateonplanchg char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('ACCOUNT' ,'ALLSERVICESONLY' ,'ALLSERVICESANDACCOUNT' ,'SERVICE' )) 
              constraint "informix".overridetype4,
    
    check (terminateonplanchg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

