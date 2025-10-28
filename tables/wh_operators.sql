drop table if exists "informix".wh_operators ;
create table "informix".wh_operators 
  (
    contact_code char(10) not null ,
    active char(1),
    cnote_dir varchar(254),
    auto_pl char(1) 
        default 'N' not null ,
    
    check (active IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (auto_pl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

