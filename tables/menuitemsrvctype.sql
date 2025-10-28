drop table if exists "informix".menuitemsrvctype ;
create table "informix".menuitemsrvctype 
  (
    mnuitm_id integer not null ,
    srvctypecode char(4) not null ,
    menuitemsvtpexcl char(1) 
        default 'N' not null ,
    mnuitm_caption varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (menuitemsvtpexcl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

