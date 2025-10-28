drop table if exists "informix".dvcetype ;
create table "informix".dvcetype 
  (
    dvcetypeid integer not null ,
    dvcetypenarr varchar(32) not null ,
    dvcetypemetr char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dvcetypemetr IN ('Y' ,'N' )) constraint "informix".yes_no
  );

