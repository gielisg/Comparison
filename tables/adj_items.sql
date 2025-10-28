drop table if exists "informix".adj_items ;
create table "informix".adj_items 
  (
    adj_item_ref serial not null ,
    adj_ref integer not null ,
    seq_num integer not null ,
    type_code char(2) not null ,
    status_code char(2) not null ,
    bill_note varchar(254,50),
    unitquantity decimal(15,6) 
        default 0.000000 not null ,
    billed_amt_ex decimal(12,6) 
        default 0.000000 not null ,
    billed_amt_tax decimal(12,6) 
        default 0.000000 not null ,
    billed_count integer 
        default 0 not null ,
    unbilled_amt_ex decimal(12,6) 
        default 0.000000 not null ,
    unbilled_amt_tax decimal(12,6) 
        default 0.000000 not null ,
    unbilled_count integer 
        default 0 not null ,
    item_amt_ex decimal(12,6) 
        default 0.000000 not null ,
    item_amt_tax decimal(12,6) 
        default 0.000000 not null ,
    effected_amt_ex decimal(12,6) 
        default 0.000000 not null ,
    effected_amt_tax decimal(12,6) 
        default 0.000000 not null ,
    effected_count integer 
        default 0 not null ,
    sys_calc char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sys_calc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

