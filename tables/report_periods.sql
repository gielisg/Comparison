drop table if exists "informix".report_periods ;
create table "informix".report_periods 
  (
    rpt_per_code char(16) not null ,
    rpt_per_narr varchar(32) not null ,
    rpt_per_desc varchar(128) not null ,
    rpt_per_category char(10) not null ,
    rpt_per_enabled char(1) 
        default 'Y' not null ,
    rpt_per_order integer 
        default 99 not null ,
    rpt_per_default char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (rpt_per_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

