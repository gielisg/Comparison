drop table if exists "informix".acc_pay_status ;
create table "informix".acc_pay_status 
  (
    acc_pay_stat_ref serial not null ,
    acc_pay_meth_ref integer not null ,
    pay_status char(2) not null ,
    acc_pay_stat_wef datetime year to second not null ,
    acc_pay_stat_wet datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (acc_pay_stat_wef <= acc_pay_stat_wet ) constraint "informix".daterange
  );

