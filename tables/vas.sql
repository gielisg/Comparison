drop table if exists "informix".vas ;
create table "informix".vas 
  (
    vas_id char(10) not null ,
    vas_narr varchar(32) not null ,
    network_id char(2) not null ,
    available char(1) 
        default 'Y' not null ,
    
    check (available IN ('Y' ,'N' )) constraint "informix".yes_no
  );

