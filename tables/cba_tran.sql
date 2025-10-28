drop table if exists "informix".cba_tran ;
create table "informix".cba_tran 
  (
    cba_tranid serial not null ,
    cba_status_id integer,
    cba_reason_id integer,
    contact_code char(10) not null ,
    cba_trantype char(1) 
        default 'A' not null ,
    cba_trandatm datetime year to second,
    cba_tranamnt decimal(8,2),
    cba_trancard varchar(32),
    cba_tranname varchar(32),
    cba_tranxpdt date,
    cba_tranreco char(1) 
        default 'N' not null ,
    bus_unit_code char(2) not null ,
    request_id integer,
    requesting_user char(20) not null ,
    num_attempts integer 
        default 0 not null ,
    man_auth char(1) 
        default 'N' not null ,
    auth_num char(20),
    reference_num char(30),
    merch_num char(20) not null ,
    assoc_trans integer,
    settle_date date,
    fin_trans_type char(1),
    fin_trans_ref char(20),
    event_ref integer,
    err_code char(10),
    err_desc varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cba_trantype IN ('D' ,'C' ,'A' )) constraint "informix".cba_tran25,
    
    check (cba_tranreco IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (man_auth IN ('Y' ,'N' )) constraint "informix".yes_no
  );

