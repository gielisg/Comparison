drop table if exists "informix".gl_accttype ;
create table "informix".gl_accttype 
  (
    type_code char(1) not null ,
    type_narr varchar(32) not null ,
    display_order integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type_code IN ('A' ,'L' ,'R' ,'E' ,'W' ,'F' ,'O' )) constraint "informix".type_code2
  );

