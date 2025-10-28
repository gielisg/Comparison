drop table if exists "informix".email_types ;
create table "informix".email_types 
  (
    email_type_code char(2) not null ,
    email_type_name varchar(254,20) not null ,
    display_order integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

