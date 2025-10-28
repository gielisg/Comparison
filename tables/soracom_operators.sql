drop table if exists "informix".soracom_operators ;
create table "informix".soracom_operators 
  (
    operator_id varchar(20) not null ,
    operator_name varchar(100),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

