drop table if exists "informix".account ;
create table "informix".account 
  (
    debtor_code char(10) not null ,
    acct_stat char(3),
    acct_type char(3),
    credit_limit integer,
    balance decimal(10,2) 
        default 0.00 not null ,
    balance_date datetime year to second,
    stmt_code char(1) not null ,
    fin_file_ref integer,
    curr_code char(3) 
        default 'AUD' not null ,
    acct_dbcr char(1) 
        default 'D' not null ,
    wholesale_dtls char(1) 
        default 'N' not null ,
    taxid integer 
        default 1 not null ,
    max_bill_cdr_age integer 
        default 190 not null ,
    invoice_interval integer 
        default 1 not null ,
    rnd_meth_code char(2) not null ,
    ext_pay_id varchar(20),
    apply_cc_surchrg char(1) 
        default 'Y' not null ,
    tax_number varchar(254),
    second_tax_number varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (acct_dbcr IN ('C' ,'D' )) constraint "informix".check
    
    check (wholesale_dtls IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (apply_cc_surchrg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

