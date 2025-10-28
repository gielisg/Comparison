drop table if exists "informix".msg_addition_addr ;
create table "informix".msg_addition_addr 
  (
    msg_addr_id serial not null ,
    msgid integer,
    type char(10) not null ,
    status char(10) not null ,
    status_dt datetime year to second 
        default current year to second not null ,
    address lvarchar(2000) not null ,
    delivery_recpt_req char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('NEW' ,'PENDING' ,'CANCELLED' ,'FAILED' ,'COMPLETED' ,'INPROGRESS' ,'ONHOLD' ,'CONFIRMED' )) 
              constraint "informix".msg_addr_status,
    
    check (type IN ('TO' ,'CC' ,'BCC' )) constraint "informix".msg_addr_type2,
    
    check (delivery_recpt_req IN ('Y' ,'N' )) constraint "informix".yes_no
  );

