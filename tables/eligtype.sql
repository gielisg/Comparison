drop table if exists "informix".eligtype ;
create table "informix".eligtype 
  (
    eligtypeid char(2) not null ,
    eligtypenarr varchar(32) not null ,
    elig_type_desc varchar(255),
    elig_type_disp char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (elig_type_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

