drop table if exists "informix".vas_chg ;
create table "informix".vas_chg 
  (
    vas_id char(10) not null ,
    chg_code char(4) not null ,
    start_date date 
        default today not null ,
    amount decimal(6,2) 
        default 0.00 not null ,
    end_date date not null ,
    
    check (end_date >= start_date ) constraint "informix".chk_vas_chg13
  );

