drop table if exists "informix".bill_message ;
create table "informix".bill_message 
  (
    billmsg_num serial not null ,
    billmsg_narr char(2048) not null ,
    one_off char(1) 
        default 'N' not null ,
    display_order integer 
        default 1 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (one_off IN ('Y' ,'N' )) constraint "informix".yes_no
  );

