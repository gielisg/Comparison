drop table if exists "informix".dcbfplan ;
create table "informix".dcbfplan 
  (
    discbenfid integer not null ,
    plan_code smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

