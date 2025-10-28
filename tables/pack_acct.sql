drop table if exists "informix".pack_acct ;
create table "informix".pack_acct 
  (
    debtor_code char(10) not null ,
    pkg_code integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

