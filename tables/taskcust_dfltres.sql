drop table if exists "informix".taskcust_dfltres ;
create table "informix".taskcust_dfltres 
  (
    type_id integer,
    contact_code char(10),
    customer_code char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

