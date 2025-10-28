drop table if exists "informix".packdeal ;
create table "informix".packdeal 
  (
    pkg_code integer not null ,
    dealer_id char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

