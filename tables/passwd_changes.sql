drop table if exists "informix".passwd_changes ;
create table "informix".passwd_changes 
  (
    id serial not null ,
    contact_code char(10) not null ,
    dt datetime year to second 
        default current year to second not null ,
    passwd lvarchar(1000)
  );

