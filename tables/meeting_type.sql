drop table if exists "informix".meeting_type ;
create table "informix".meeting_type 
  (
    type_id serial not null ,
    type_narr char(32) not null ,
    active char(1) 
        default 'Y' not null ,
    disp_ord integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (disp_ord >= 0 ) constraint "informix".greater_eq_019,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

