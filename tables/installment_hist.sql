drop table if exists "informix".installment_hist ;
create table "informix".installment_hist 
  (
    inst_histref serial not null ,
    inst_id integer not null ,
    acc_pay_meth_ref integer not null ,
    created_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    original_amount decimal(6,2) not null ,
    amount_paid decimal(6,2) not null ,
    last_date_paid date,
    inst_cycle_type char(1) 
        default 'M' not null ,
    status_id integer not null ,
    status_reas_id integer,
    status_chg_dt datetime year to second 
        default current year to second not null ,
    status_chg_by varchar(18,10) 
        default user not null ,
    inst_day smallint not null ,
    next_inst_due_date date,
    note text,
    
    check (inst_cycle_type IN ('M' ,'Q' ,'W' ,'B' )) constraint "informix".chg_freq212,
    
    check ((inst_day >= 1 ) AND (inst_day <= 31 ) ) constraint "informix".day_of_month78
  );

