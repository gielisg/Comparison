drop table if exists "informix".billmsg_account ;
create table "informix".billmsg_account 
  (
    debtor_code char(10) not null ,
    billmsg_num integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    billmsg_rule_id integer,
    billstepref integer,
    fin_src_code char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

