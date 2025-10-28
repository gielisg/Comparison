drop table if exists "informix".amnttype ;
create table "informix".amnttype 
  (
    amnttypeid char(2) not null ,
    amnttypenarr varchar(32) not null ,
    amnt_type_desc varchar(255),
    amnt_type_disp char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (amnt_type_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

