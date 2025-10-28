drop table if exists "informix".chghiertype ;
create table "informix".chghiertype 
  (
    chghiertypecode char(4) not null ,
    chghiertypenarr varchar(64) not null ,
    chghiermand char(1) 
        default 'N' not null ,
    chghierdispordr integer 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (chghiermand IN ('Y' ,'N' )) constraint "informix".yes_no
  );

