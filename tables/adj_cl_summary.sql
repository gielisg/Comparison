drop table if exists "informix".adj_cl_summary ;
create table "informix".adj_cl_summary 
  (
    adj_cl_sum_id serial not null ,
    tariff_num integer,
    adj_item_ref integer not null ,
    fin_invdtl_ref integer not null ,
    sp_plan_ref integer not null ,
    tar_class_code smallint not null ,
    first_call datetime year to second,
    last_call datetime year to second,
    orig_amt_ex decimal(14,6) 
        default 0.000000 not null ,
    orig_amt_tax decimal(14,6) 
        default 0.000000 not null ,
    prev_adj_amt_ex decimal(14,6) 
        default 0.000000 not null ,
    prev_adj_amt_tax decimal(14,6) 
        default 0.000000 not null ,
    adj_amt_ex decimal(14,6) 
        default 0.000000 not null ,
    adj_amt_tax decimal(14,6) 
        default 0.000000 not null ,
    unitquantity decimal(16,2),
    call_count integer
  );

