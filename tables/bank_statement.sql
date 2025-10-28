drop table if exists "informix".bank_statement ;
create table "informix".bank_statement 
  (
    bank_stmt_id serial not null ,
    bank_acct_id integer,
    seq_num integer,
    nt_file_num integer,
    sender varchar(50),
    proc_date date not null ,
    prev_proc_date date,
    next_proc_date date,
    closing_balance decimal(16,3),
    total_credits decimal(16,3),
    total_debits decimal(16,3),
    num_credit_trans integer,
    num_debit_trans integer,
    overdraft_limit decimal(16,3),
    accrued_interest decimal(16,3),
    accrued_deb_tax decimal(16,3),
    accrued_lim_fee decimal(16,3),
    accrued_acct_fee decimal(16,3),
    debit_cutoff_amt decimal(16,3),
    cred_cutoff_amt decimal(16,3),
    status_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

