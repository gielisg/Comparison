drop table if exists "informix".disclog ;
create table "informix".disclog 
  (
    disclogref serial not null ,
    subsdiscid integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    debtor_code char(10),
    disclogmsg varchar(255) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

