drop table if exists "informix".meeting_itemstat ;
create table "informix".meeting_itemstat 
  (
    status_id serial not null ,
    status_narr char(32) not null ,
    active char(1) 
        default 'Y' not null ,
    sys_status char(1) 
        default 'O' not null ,
    sys_depend char(1),
    disp_ord smallint 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sys_depend IN ('I' ,'C' ,'E' )) constraint "informix".i_c_e12,
    
    check (sys_status IN ('O' ,'C' ,'X' )) constraint "informix".ntwkevntoptn26,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

