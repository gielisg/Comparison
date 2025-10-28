drop table if exists "informix".contr_pen_charge ;
create table "informix".contr_pen_charge 
  (
    contr_pen_code char(2) not null ,
    chg_code char(4) not null ,
    include_fut_chgs char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (include_fut_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
  );

