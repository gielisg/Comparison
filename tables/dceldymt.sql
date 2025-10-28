drop table if exists "informix".dceldymt ;
create table "informix".dceldymt 
  (
    disceligid serial not null ,
    dymtday integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

