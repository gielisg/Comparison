drop table if exists "informix".pm_usage_his ;
create table "informix".pm_usage_his 
  (
    pm_usage_his_ref serial not null ,
    pm_usage_ref integer,
    sp_cn_ref integer,
    acc_pay_meth_ref integer not null ,
    pm_usagewefr datetime year to second 
        default current year to second not null ,
    pm_usageweto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    last_used_dt datetime year to second,
    pm_component char(3) 
        default 'YYY' not null ,
    pm_last_updated datetime year to second,
    pm_updated_by varchar(18,10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

