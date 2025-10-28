drop table if exists "informix".mail_recipients ;
create table "informix".mail_recipients 
  (
    mail_id integer not null ,
    recipient varchar(18,10) not null ,
    dt_read datetime year to second,
    cc_only char(1) 
        default 'N' not null ,
    grp_id integer,
    
    check (cc_only IN ('Y' ,'N' )) constraint "informix".yes_no
  );

