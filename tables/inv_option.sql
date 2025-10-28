drop table if exists "informix".inv_option ;
create table "informix".inv_option 
  (
    debtor_code char(10) not null ,
    invopt_code char(1) not null ,
    invopt_mandatory char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (invopt_mandatory IN ('Y' ,'N' )) constraint "informix".yes_no
  );

