drop table if exists "informix".pkg_paytype ;
create table "informix".pkg_paytype 
  (
    pkg_code integer not null ,
    pay_code char(2) not null ,
    bartgrpid integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

