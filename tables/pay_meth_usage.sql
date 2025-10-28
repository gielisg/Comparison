drop table if exists "informix".pay_meth_usage ;
create table "informix".pay_meth_usage 
  (
    pm_usage_ref serial not null ,
    sp_cn_ref integer,
    acc_pay_meth_ref integer not null ,
    pm_usagewefr datetime year to second not null ,
    pm_usageweto datetime year to second not null ,
    last_used_dt datetime year to second,
    pm_component char(3) 
        default 'YYY' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

