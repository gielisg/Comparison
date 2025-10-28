drop table if exists "informix".sp_cn_status ;
create table "informix".sp_cn_status 
  (
    sp_cn_status char(3) not null ,
    sp_cn_stat_phase char(3) not null ,
    sp_cn_stat_narr varchar(32) not null ,
    sp_cn_stat_order integer 
        default 1 not null ,
    sp_cn_stat_disp char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sp_cn_stat_phase IN ('DSP' ,'CON' ,'DIS' )) constraint "informix".sp_cn_stat_phase17,
    
    check (sp_cn_stat_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

