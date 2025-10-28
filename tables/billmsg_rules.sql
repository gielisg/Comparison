drop table if exists "informix".billmsg_rules ;
create table "informix".billmsg_rules 
  (
    billmsg_rule_id serial not null ,
    billmsg_num integer not null ,
    cycle_code char(2) not null ,
    period_start integer not null ,
    period_end integer not null ,
    srvctypecode char(4),
    pkg_code integer,
    all_accounts char(1) 
        default 'N' not null ,
    first_bill char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (first_bill IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (all_accounts IN ('Y' ,'N' ,'X' )) constraint "informix".yes_no
  );

