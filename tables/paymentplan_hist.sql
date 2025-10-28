drop table if exists "informix".paymentplan_hist ;
create table "informix".paymentplan_hist 
  (
    payplan_histref serial not null ,
    plan_ref integer not null ,
    debtor_code char(10) not null ,
    plan_wefr date not null ,
    plan_weto date not null ,
    pay_cycle_type char(10) 
        default 'M' not null ,
    max_num_payments integer 
        default 0 not null ,
    status_id integer not null ,
    status_reas_id integer,
    status_chg_dt datetime year to second not null ,
    status_chg_by varchar(18,10) not null ,
    payment_day smallint not null ,
    next_pay_due date,
    note varchar(255),
    acc_pay_meth_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pay_cycle_type IN ('M' ,'Q' ,'W' ,'B' )) constraint "informix".chg_freq2,
    
    check ((payment_day >= 1 ) AND (payment_day <= 31 ) ) constraint "informix".day_of_month67,
    
    check (max_num_payments >= 0 ) constraint "informix".greater_eq512
  );

