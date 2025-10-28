drop table if exists "informix".veda_gl_exp_sum ;
create table "informix".veda_gl_exp_sum 
  (
    bus_unit_code char(2) not null ,
    exp_date date not null ,
    exp_amount decimal(12,2),
    exp_total decimal(12,2),
    created_total decimal(12,2) 
        default 0.00 not null ,
    future_total decimal(12,2) 
        default 0.00 not null ,
    sel_total decimal(12,2),
    fin_total decimal(12,2),
    last_checked_dt datetime year to second 
        default current year to second,
    last_check_diff decimal(12,2)
  );

