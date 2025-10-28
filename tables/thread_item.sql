drop table if exists "informix".thread_item ;
create table "informix".thread_item 
  (
    thread_ref integer not null ,
    item_ref integer not null ,
    internal_flg char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (internal_flg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

