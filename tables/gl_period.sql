drop table if exists "informix".gl_period ;
create table "informix".gl_period 
  (
    gl_period char(6) not null ,
    gl_status char(1) 
        default 'O' not null ,
    start_date date not null ,
    end_date date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (end_date > start_date ) constraint "informix".chk_date,
    
    check (gl_status IN ('O' ,'C' )) constraint "informix".open_closed
  );

