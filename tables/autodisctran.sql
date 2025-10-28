drop table if exists "informix".autodisctran ;
create table "informix".autodisctran 
  (
    subsdiscid integer not null ,
    autodiscid integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    created_by varchar(18,10) 
        default user not null ,
    created datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null 
  );

