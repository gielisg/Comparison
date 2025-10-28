drop table if exists "informix".disctype ;
create table "informix".disctype 
  (
    disctypeid char(2) not null ,
    disctypenarr varchar(32) not null ,
    disc_type_desc varchar(255) not null ,
    disc_type_disp char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (disc_type_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

