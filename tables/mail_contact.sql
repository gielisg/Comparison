drop table if exists "informix".mail_contact ;
create table "informix".mail_contact 
  (
    mail_id integer not null ,
    contact_code char(10) not null 
  );

