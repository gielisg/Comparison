drop table if exists "informix".networks ;
create table "informix".networks 
  (
    network_id char(2) not null ,
    network_narr varchar(32) not null ,
    contact_code char(10),
    display_flg char(1) 
        default 'N' not null ,
    
    check (display_flg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

