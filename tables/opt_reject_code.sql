drop table if exists "informix".opt_reject_code ;
create table "informix".opt_reject_code 
  (
    reject_code char(2) not null ,
    reject_narr varchar(100) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

