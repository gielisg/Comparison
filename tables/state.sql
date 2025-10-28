drop table if exists "informix".state ;
create table "informix".state 
  (
    state_code char(3) not null ,
    country_code char(2) not null ,
    state_narr varchar(32) not null ,
    display_order smallint,
    default char(1) 
        default 'N',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

