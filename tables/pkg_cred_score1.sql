drop table if exists "informix".pkg_cred_score1 ;
create table "informix".pkg_cred_score1 
  (
    pkg_code integer not null ,
    option smallint not null ,
    pay_code_type char(1) not null ,
    type char(1) not null ,
    plan_code char(5),
    restrict_to char(10),
    min_reqd_score integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('P' ,'B' )) constraint "informix".contact_type222
  );

