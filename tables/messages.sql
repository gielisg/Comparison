drop table if exists "informix".messages ;
create table "informix".messages 
  (
    msgid serial not null ,
    sp_cn_ref integer,
    type char(12) not null ,
    direction char(3) 
        default 'OUT' not null ,
    status char(14) not null ,
    status_dt datetime year to second 
        default current year to second not null ,
    due_dt datetime year to second 
        default current year to second not null ,
    address lvarchar(2000) not null ,
    subject varchar(254),
    message lvarchar(30000),
    sender varchar(254),
    correlation_id integer,
    delivery_recpt_req char(1) 
        default 'N' not null ,
    message_format char(6) 
        default 'TEXT' not null ,
    priority char(6) 
        default 'LOW' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (direction IN ('IN' ,'OUT' ,'BI' )) constraint "informix".msg_direction3,
    
    check (message_format IN ('TEXT' ,'HTML' ,'BASE64' )) constraint "informix".msg_format7,
    
    check (priority IN ('HIGH' ,'MEDIUM' ,'LOW' )) constraint "informix".msg_priority2,
    
    check (status IN ('UNASSIGNED' ,'UNREAD' ,'NEW' ,'PENDING' ,'INPROGRESS' ,'CANCELLED' ,'ONHOLD' ,'PARTIALFAILURE' ,'FAILED' ,'COMPLETED' ,'CONFIRMED' )) 
              constraint "informix".msg_status2,
    
    check (type IN ('EMAIL' ,'SMS' ,'IM' ,'NOTIFICATION' ,'MAIL' )) constraint "informix".msg_type3,
    
    check (delivery_recpt_req IN ('Y' ,'N' )) constraint "informix".yes_no
  );

