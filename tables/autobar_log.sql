drop table if exists "informix".autobar_log ;
create table "informix".autobar_log 
  (
    autobar_log_ref serial not null ,
    sp_cn_ref integer not null ,
    log_dt datetime year to second 
        default current year to second not null ,
    unbilled_calls decimal(10,4) not null ,
    unbilled_chgs decimal(10,4),
    unearned_chgs decimal(10,4),
    adjusted_chgs decimal(10,4) not null ,
    fin_balance decimal(10,4) not null ,
    adj_fin_balance decimal(10,4),
    event_ref integer,
    note varchar(50,10),
    mode varchar(50,10) 
        default 'Standard' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

