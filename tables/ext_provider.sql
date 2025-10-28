drop table if exists "informix".ext_provider ;
create table "informix".ext_provider 
  (
    ext_provider_id integer not null ,
    provider_narr varchar(32,10) not null ,
    file_type varchar(16),
    online_provider char(1) 
        default 'N' not null ,
    file_base char(1) 
        default 'N' not null ,
    enabled char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (online_provider IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (file_base IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

