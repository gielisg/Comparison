drop table if exists "informix".dvceattr ;
create table "informix".dvceattr 
  (
    dvceattrid integer not null ,
    dvceattrnarr varchar(32) not null ,
    dvceattrmand char(1) 
        default 'N' not null ,
    dvceattrtype smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dvceattrmand IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (dvceattrmand IN ('Y' ,'N' )) constraint "informix".yes_no
  );

