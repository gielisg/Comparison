drop table if exists "informix".chats ;
create table "informix".chats 
  (
    id serial not null ,
    contact_code char(10),
    email_address varchar(254),
    emailed_dt datetime year to second,
    closed_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

