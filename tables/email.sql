drop table if exists "informix".email ;
create table "informix".email 
  (
    contact_code char(10) not null ,
    email_addr varchar(254) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

