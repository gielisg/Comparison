drop table if exists "informix".corr_type ;
create table "informix".corr_type 
  (
    corr_type_code char(1) not null ,
    corr_type_narr varchar(64),
    event_type char(2) not null ,
    event_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (corr_type_code IN ('I' ,'L' ,'O' ,'P' ,'S' ,'W' )) constraint "informix".corr_type_code
  );

