drop table if exists "informix".corr_template ;
create table "informix".corr_template 
  (
    corr_type_code char(1) not null ,
    template_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (corr_type_code IN ('I' ,'L' ,'O' ,'P' ,'S' ,'W' )) constraint "informix".corr_type_code2
  );

