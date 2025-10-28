drop table if exists "informix".bank_stmt_trans ;
create table "informix".bank_stmt_trans 
  (
    bank_stmt_id integer not null ,
    seq_num integer not null ,
    status_id integer,
    transaction_amt decimal(16,3),
    transaction_code varchar(10,4),
    transaction_narr varchar(60,20),
    serial_num varchar(20,10),
    acct_num varchar(20),
    pending_suggest char(1) 
        default 'N' not null ,
    suggestedcontact char(10),
    suggested_action char(1),
    suggested_status integer,
    proc_rule_id integer,
    fin_ref integer,
    bankdpstid integer,
    reconciled char(1) 
        default 'N' not null ,
    comment varchar(254),
    adj_amnt decimal(16,2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pending_suggest IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (reconciled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

