drop table if exists "informix".srvcrelntype ;
create table "informix".srvcrelntype 
  (
    relntypeid char(2) not null ,
    srvctypecode char(4) not null ,
    relntypenarr varchar(32) not null ,
    parent char(1) not null ,
    parent_mandatory char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (parent_mandatory IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (parent IN ('Y' ,'N' )) constraint "informix".yes_no
  );

