drop table if exists "informix".fin_status ;
create table "informix".fin_status 
  (
    fin_stat_code char(2) not null ,
    fin_stat_narr varchar(32) not null ,
    manual_updatable char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (manual_updatable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

