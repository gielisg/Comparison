drop table if exists "informix".benftype ;
create table "informix".benftype 
  (
    benftypeid char(2) not null ,
    benftypenarr varchar(32) not null ,
    benf_type_desc varchar(255),
    benf_type_disp char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (benf_type_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

