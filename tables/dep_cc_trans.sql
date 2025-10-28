drop table if exists "informix".dep_cc_trans ;
create table "informix".dep_cc_trans 
  (
    dep_id integer not null ,
    request_ref char(20) not null ,
    trans_type char(1) not null ,
    
    check (trans_type IN ('N' ,'R' )) constraint "informix".cc_tran_type14,
    
    check (trans_type IN ('N' ,'R' )) constraint "informix".cc_tran_type21
  );

