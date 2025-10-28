drop table if exists "informix".dcbfperc ;
create table "informix".dcbfperc 
  (
    discbenfid integer 
        default 100 not null ,
    dcbfpercperc decimal(16,10) not null ,
    dcbfpercinclflag char(1) 
        default 'Y',
    useredit char(1) 
        default 'N' not null ,
    tariff_detl_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dcbfpercinclflag IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (useredit IN ('Y' ,'N' )) constraint "informix".yes_no
  );

