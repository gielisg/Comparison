drop table if exists "informix".bill ;
create table "informix".bill 
  (
    bill_ref serial not null ,
    billrunref integer,
    fin_src_code char(2) 
        default 'BG' not null ,
    debtor_code char(10) not null ,
    bill_seqn integer not null ,
    bill_num char(10) not null ,
    bill_period integer not null ,
    cycle_code char(2) 
        default 'CM' not null ,
    print_file_ref integer,
    bill_date date not null ,
    bill_due_date date not null ,
    prev_amt decimal(10,2) not null ,
    pay_adj_amt decimal(10,2) not null ,
    balance decimal(10,2) not null ,
    install_amt decimal(10,2) not null ,
    deposit_amt decimal(10,2) not null ,
    new_charges decimal(10,2) not null ,
    amount_due decimal(10,2) not null ,
    curr_code char(3),
    stmt_code char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

