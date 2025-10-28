drop table if exists "informix".installments ;
create table "informix".installments 
  (
    inst_id serial not null ,
    original_amount decimal(6,2) 
        default 0.00 not null ,
    amount_paid decimal(6,2) 
        default 0.00 not null ,
    last_date_paid datetime year to second,
    inst_cycle_type varchar(20) 
        default 'Monthly' not null ,
    status char(20) 
        default 'Open' not null ,
    status_reas_id integer,
    status_chg_dt datetime year to second 
        default current year to second not null ,
    status_chg_by char(10) 
        default user not null ,
    inst_day smallint not null ,
    next_inst_due datetime year to second,
    acc_pay_meth_ref integer,
    note lvarchar(2000),
    created_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((inst_day >= 1 ) AND (inst_day <= 31 ) ) constraint "informix".day_of_month92,
    
    check (inst_cycle_type IN ('Monthly' ,'Weekly' ,'Quarterly' )) constraint "informix".instcycle_type5,
    
    check (status IN ('Open' ,'Suspended' ,'Cancelled' ,'Completed' )) constraint 
              "informix".status_inst9
  );

