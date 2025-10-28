drop table if exists "informix".cc_inv_deleg ;
create table "informix".cc_inv_deleg 
  (
    cc_inv_deleg_id serial not null ,
    cost_centreid integer not null ,
    start_billperiod integer not null ,
    end_billperiod integer,
    delegate_account char(10),
    cr_deleg_acct char(1) 
        default 'Y' not null ,
    comments lvarchar(1024),
    reason_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cr_deleg_acct IN ('Y' ,'N' )) constraint "informix".yes_no
  );

