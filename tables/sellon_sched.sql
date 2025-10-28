drop table if exists "informix".sellon_sched ;
create table "informix".sellon_sched 
  (
    event_ref integer not null ,
    sp_cn_ref integer not null ,
    contact_code char(10) not null ,
    acc_pay_meth_ref integer not null ,
    pkg_code integer,
    option smallint,
    corp_code char(10),
    dealer_id char(10),
    cost_centreid integer,
    sp_enq_passwd char(32),
    sp_mailbox_num char(10),
    chg_amount decimal(18,10),
    prnt_sp_cn_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

