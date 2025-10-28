drop table if exists "informix".sys_cnfg ;
create table "informix".sys_cnfg 
  (
    cnfg_key char(32) not null ,
    cnfg_val varchar(255,1) not null ,
    cnfg_desc varchar(254),
    cnfg_area varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

