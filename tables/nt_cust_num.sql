drop table if exists "informix".nt_cust_num ;
create table "informix".nt_cust_num 
  (
    nt_cust_num char(10) not null ,
    nt_cust_narr char(30),
    default_cust char(1) 
        default 'N' not null ,
    
    check (default_cust IN ('Y' ,'N' )) constraint "informix".yes_no
  );

