drop table if exists "informix".pl_cc_req ;
create table "informix".pl_cc_req 
  (
    pl_id integer not null ,
    ord_id integer not null ,
    req_type char(1) not null ,
    seq_no integer not null ,
    approved char(1) not null ,
    request_id char(20) not null ,
    amount decimal(10,2) 
        default 0.00 not null ,
    auth_num char(20),
    
    check (req_type IN ('C' ,'D' )) constraint "informix".check
  );

