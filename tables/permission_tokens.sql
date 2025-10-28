drop table if exists "informix".permission_tokens ;
create table "informix".permission_tokens 
  (
    token_id integer not null ,
    token_narr varchar(32) not null ,
    system_record char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (system_record IN ('Y' ,'N' ,'I' )) constraint "informix".yni4
  );

