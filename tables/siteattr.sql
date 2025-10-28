drop table if exists "informix".siteattr ;
create table "informix".siteattr 
  (
    siteattrid integer not null ,
    siteattrnarr varchar(32) not null ,
    siteattrmand char(1) 
        default 'N' not null ,
    siteattrtype smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (siteattrmand IN ('Y' ,'N' )) constraint "informix".yes_no
  );

