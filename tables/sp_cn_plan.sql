drop table if exists "informix".sp_cn_plan ;
create table "informix".sp_cn_plan 
  (
    sp_plan_ref serial not null ,
    sp_cn_ref integer not null ,
    pkg_code integer not null ,
    option smallint not null ,
    sp_plan_start datetime year to second not null ,
    sp_plan_stop datetime year to second not null ,
    sched_ref integer,
    sched_flags char(3) 
        default 'NYP' not null ,
    sp_plan_ntwk_id varchar(124),
    fee decimal(10,3),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

